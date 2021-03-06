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

#ifndef _PROCESSEXEC_H_
#define _PROCESSEXEC_H_

#include <string>
#include <vector>
#include <map>

class ProcessExec
{
	struct st_pipe
	{
		int read_end;
		int write_end;
	};
	
	std::string path;
	std::string wd;
	std::vector<std::string> arguments;
	std::map<std::string,std::string> env;
	
	int stdin_pipe[2] = {-1,-1};
	std::string stdin_data;
	
	std::map<int,int> file_rdr;
	std::map<int,int> fd_rdr;
	std::map<int,st_pipe> parent_rdr;
	
	public:
		ProcessExec();
		ProcessExec(const std::string &path);
		~ProcessExec();

		void SetPath(const std::string &path);
		std::string GetPath() { return path; }
		void SetScript(const std::string &path, const std::string &script);
		
		void SetWorkingDirectory(const std::string &wd) { this->wd = wd; }
		
		void AddArgument(const std::string &value, bool escape=false);
		
		void AddEnv(const std::string &name, const std::string &value);
		
		void PipeMap(const std::map<std::string,std::string> &data);
		void PipeString(const std::string &data);
		void Pipe(const std::string &data);
		
		void FileRedirect(int fd, const std::string &filename);
		void FDRedirect(int src_fd, int dst_fd);
		int ParentRedirect(int fd);
		
		static void SelfFileRedirect(int fd, const std::string &filename);
		
		pid_t Exec();
	
	private:
		void init_stdin_pipe();
		static int open_log_file(const std::string &filename_base, int log_fileno);
		static int rdr_file(int fno, int fd);
};

#endif
