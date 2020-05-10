/*
 * This file is part of evQueue
 * 
 * evQueue is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * evQueue is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with evQueue. If not, see <http://www.gnu.org/licenses/>.
 * 
 * Author: Thibault Kummer <bob@coldsource.net>
 */

#include <Notification/Notification.h>
#include <Notification/Notifications.h>
#include <Notification/NotificationType.h>
#include <Notification/NotificationTypes.h>
#include <Workflow/Workflows.h>
#include <Exception/Exception.h>
#include <DB/DB.h>
#include <Configuration/ConfigurationEvQueue.h>
#include <Logger/Logger.h>
#include <WorkflowInstance/WorkflowInstance.h>
#include <API/XMLQuery.h>
#include <API/QueryResponse.h>
#include <Process/Forker.h>
#include <Process/DataSerializer.h>
#include <Process/tools_ipc.h>
#include <Crypto/base64.h>
#include <User/User.h>
#include <global.h>
#include <Workflow/Workflow.h>
#include <WS/Events.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/wait.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <fcntl.h>

using namespace std;

Notification::Notification(DB *db,unsigned int notification_id)
{
	id = notification_id;
	
	db->QueryPrintf("SELECT notification_type_id,notification_name,notification_subscribe_all,notification_parameters FROM t_notification WHERE notification_id=%i",&notification_id);
	
	if(!db->FetchRow())
		throw Exception("Notification","Unknown notification");
	
	unix_socket_path = ConfigurationEvQueue::GetInstance()->Get("network.bind.path");
	
	logs_directory = ConfigurationEvQueue::GetInstance()->Get("notifications.logs.directory");
	
	timeout = ConfigurationEvQueue::GetInstance()->Get("notifications.tasks.timeout");
	
	type_id = db->GetFieldInt(0);
	
	NotificationType notification_type = NotificationTypes::GetInstance()->Get(type_id);
	
	notification_binary = ConfigurationEvQueue::GetInstance()->Get("notifications.tasks.directory")+"/"+to_string(notification_type.GetID());
	
	notification_name = db->GetField(1);
	notification_subscribe_all = db->GetFieldInt(2);
	
	// Build confiuration JSON
	notification_configuration = db->GetField(3);
	plugin_configuration = notification_type.GetConfiguration();
}

pid_t Notification::Call(WorkflowInstance *workflow_instance)
{
	try
	{
		string configuration;
		configuration += "{\"pluginconf\":";
		configuration += plugin_configuration;
		configuration += ",\"notificationconf\":";
		configuration += notification_configuration;
		configuration += ",\"instance\":\"";
		configuration += json_escape(workflow_instance->GetDOM()->Serialize(workflow_instance->GetDOM()->getDocumentElement()));
		configuration += "\"}";
		
		vector<string> parameters;
		parameters.push_back(to_string(id));
		parameters.push_back(notification_binary);
		parameters.push_back(timeout);
		parameters.push_back(to_string(workflow_instance->GetInstanceID()));
		parameters.push_back(to_string(workflow_instance->GetErrors()));
		parameters.push_back(unix_socket_path);
		
		string data;
		data += DataSerializer::Serialize(parameters);
		data += DataSerializer::Serialize(configuration);
		
		pid_t pid = Forker::GetInstance()->Execute("evq_nf_monitor", data);
		
		if(pid<0)
		{
			Logger::Log(LOG_WARNING,"[ WID %d ] Unable to execute notification task '%s' : could not fork monitor",workflow_instance->GetInstanceID(),notification_name.c_str());
			return pid;
		}
		
		return pid;
	}
	catch(Exception &e)
	{
		Logger::Log(LOG_WARNING,"[ WID %d ] Unable to execute notification task '%s' : %s",workflow_instance->GetInstanceID(),notification_name.c_str(),e.error.c_str());
		return -1;
	}
}

void Notification::Get(unsigned int id,QueryResponse *response)
{
	Notification notification = Notifications::GetInstance()->Get(id);
	
	DOMElement node = (DOMElement)response->AppendXML("<notification />");
	node.setAttribute("type_id",to_string(notification.GetTypeID()));
	node.setAttribute("name",notification.GetName());
	node.setAttribute("subscribe_all",notification.GetSubscribeAll()?"yes":"no");
	
	string  parameters_base64;
	base64_encode_string(notification.GetConfiguration(),parameters_base64);
	node.setAttribute("parameters",parameters_base64);
}

void Notification::Create(unsigned int type_id,const string &name, int subscribe_all, const string parameters)
{
	create_edit_check(type_id,name,parameters);
	
	if(!NotificationTypes::GetInstance()->Exists(type_id))
		throw Exception("Notification","Unknown notification type ID","UNKNOWN_NOTIFICATION_TYPE");
	
	DB db;
	db.QueryPrintf("INSERT INTO t_notification(notification_type_id,notification_name,notification_subscribe_all,notification_parameters) VALUES(%i,%s,%i,%s)",&type_id,&name,&subscribe_all,&parameters);
	
	if(subscribe_all)
	{
		unsigned int id = db.InsertID();
		subscribe_all_workflows(id);
	}
}

void Notification::Edit(unsigned int id, unsigned int type_id, const string &name, int subscribe_all, const string parameters)
{
	if(!Notifications::GetInstance()->Exists(id))
		throw Exception("Notification","Unable to find notification","UNKNOWN_NOTIFICATION");
	
	create_edit_check(0,name,parameters);
	
	DB db;
	db.QueryPrintf("UPDATE t_notification SET notification_type_id=%i,notification_name=%s,notification_subscribe_all=%i,notification_parameters=%s WHERE notification_id=%i",&type_id,&name,&subscribe_all,&parameters,&id);
	
	
	if(subscribe_all)
		subscribe_all_workflows(id);
}

void Notification::Delete(unsigned int id)
{
	if(!Notifications::GetInstance()->Exists(id))
		throw Exception("Notification","Unable to find notification","UNKNOWN_NOTIFICATION");
	
	DB db;
	
	db.StartTransaction();
	
	db.QueryPrintf("DELETE FROM t_notification WHERE notification_id=%i",&id);
	
	db.QueryPrintf("DELETE FROM t_workflow_notification WHERE notification_id=%i",&id);
	
	db.CommitTransaction();
}

string Notification::json_escape(const string &str)
{
	string escaped_str;
	for(int i=0;i<str.length();i++)
	{
		if(str[i]=='\b')
			escaped_str+="\\b";
		else if(str[i]=='\f')
			escaped_str+="\\f";
		else if(str[i]=='\r')
			escaped_str+="\\r";
		else if(str[i]=='\n')
			escaped_str+="\\n";
		else if(str[i]=='\t')
			escaped_str+="\\t";
		else if(str[i]=='\"')
			escaped_str+="\\\"";
		else if(str[i]=='\\')
			escaped_str+="\\\\";
		else
			escaped_str+=str[i];
	}
	
	return escaped_str;
}

void Notification::create_edit_check(unsigned int type_id,const string &name, const string parameters)
{
	if(name.length()==0)
		throw Exception("Notification","Name cannot be empty","INVALID_PARAMETER");
}

void Notification::subscribe_all_workflows(unsigned int id)
{
	DB db;
	DB db2(&db);
	
	db.QueryPrintf("DELETE FROM t_workflow_notification WHERE notification_id=%i",&id);
	
	db.Query("SELECT workflow_id FROM t_workflow");
	while(db.FetchRow())
	{
		unsigned int workflow_id = db.GetFieldInt(0);
		db2.QueryPrintf("INSERT INTO t_workflow_notification(workflow_id,notification_id) VALUES(%i,%i)",&workflow_id,&id);
	}
}

bool Notification::HandleQuery(const User &user, XMLQuery *query, QueryResponse *response)
{
	if(!user.IsAdmin())
		User::InsufficientRights();
	
	const string action = query->GetRootAttribute("action");
	
	if(action=="get")
	{
		unsigned int id = query->GetRootAttributeInt("id");
		
		Get(id,response);
		
		return true;
	}
	else if(action=="create" || action=="edit")
	{
		string name = query->GetRootAttribute("name");
		
		string parameters_base64 = query->GetRootAttribute("parameters");
		string parameters;
		if(parameters_base64.length())
			base64_decode_string(parameters,parameters_base64);
		
		bool subscribe_all = query->GetRootAttributeBool("subscribe_all",false);
		
		if(action=="create")
		{
			unsigned int type_id = query->GetRootAttributeInt("type_id");
			
			Create(type_id, name, subscribe_all, parameters);
			
			Events::GetInstance()->Create(Events::en_types::NOTIFICATION_CREATED);
		}
		else
		{
			unsigned int id = query->GetRootAttributeInt("id");
			unsigned int type_id = query->GetRootAttributeInt("type_id");
			
			Edit(id, type_id, name, subscribe_all, parameters);
			
			Events::GetInstance()->Create(Events::en_types::NOTIFICATION_MODIFIED);
		}
		
		Notifications::GetInstance()->Reload();
		if(subscribe_all)
			Workflows::GetInstance()->Reload();
		
		return true;
	}
	else if(action=="delete")
	{
		unsigned int id = query->GetRootAttributeInt("id");
		
		Delete(id);
		
		Notifications::GetInstance()->Reload();
		Workflows::GetInstance()->Reload();
		
		Events::GetInstance()->Create(Events::en_types::NOTIFICATION_REMOVED);
		
		return true;
	}
	
	return false;
}
