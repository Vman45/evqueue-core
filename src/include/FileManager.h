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

#ifndef _FILEMANAGER_H_
#define _FILEMANAGER_H_

#include <sys/stat.h>

#include <string>

class FileManager
{
	public:
		static const int FILETYPE_BINARY = 1;
		static const int FILETYPE_CONF = 2;
		static const int DATATYPE_BASE64 = 1;
		static const int DATATYPE_BINARY = 2;
		
		static bool CheckFileName(const std::string &directory,const std::string &file_name);
		
		static void PutFile(const std::string &directory,const std::string &filename,const std::string &data,int filetype,int datatype=DATATYPE_BASE64);
		static void GetFile(const std::string &directory,const std::string &filename,std::string &data);
		static void RemoveFile(const std::string &directory,const std::string &filename);
		
		static void GetFileHash(const std::string &directory,const std::string &filename,std::string &hash);
		
		static void Chmod(const std::string &directory,const std::string &filename,mode_t mode);
};

#endif
