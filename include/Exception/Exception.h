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

#ifndef _EXCEPTION_H_
#define _EXCEPTION_H_

#include <string>

class Exception
{
	public:
		std::string context;
		std::string error;
		std::string code;
		int codeno;
		
		Exception(const std::string &context,const std::string &error);
		Exception(const std::string &context,const std::string &error,const std::string &code);
		Exception(const std::string &context,const std::string &error,const std::string &code,int codeno);
		~Exception();
};


#endif
