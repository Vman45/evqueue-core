# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/dev/evqueue-core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/dev/evqueue-core/src/build

# Include any dependencies generated for this target.
include CMakeFiles/evqueue_api.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/evqueue_api.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/evqueue_api.dir/flags.make

CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o: ../evqueue_api.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o -c /mnt/dev/evqueue-core/src/evqueue_api.cpp

CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/evqueue_api.cpp > CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.i

CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/evqueue_api.cpp -o CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.s

CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o

CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o: ../ClientBase.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o -c /mnt/dev/evqueue-core/src/ClientBase.cpp

CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/ClientBase.cpp > CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.i

CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/ClientBase.cpp -o CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.s

CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o

CMakeFiles/evqueue_api.dir/src/Exception.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/Exception.cpp.o: ../Exception.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/Exception.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/Exception.cpp.o -c /mnt/dev/evqueue-core/src/Exception.cpp

CMakeFiles/evqueue_api.dir/src/Exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/Exception.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/Exception.cpp > CMakeFiles/evqueue_api.dir/src/Exception.cpp.i

CMakeFiles/evqueue_api.dir/src/Exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/Exception.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/Exception.cpp -o CMakeFiles/evqueue_api.dir/src/Exception.cpp.s

CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/Exception.cpp.o

CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o: ../SocketResponseSAX2Handler.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o -c /mnt/dev/evqueue-core/src/SocketResponseSAX2Handler.cpp

CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/SocketResponseSAX2Handler.cpp > CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.i

CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/SocketResponseSAX2Handler.cpp -o CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.s

CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o

CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o: ../SocketSAX2Handler.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o -c /mnt/dev/evqueue-core/src/SocketSAX2Handler.cpp

CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/SocketSAX2Handler.cpp > CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.i

CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/SocketSAX2Handler.cpp -o CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.s

CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o

CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o: ../NetworkInputSource.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o -c /mnt/dev/evqueue-core/src/NetworkInputSource.cpp

CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/NetworkInputSource.cpp > CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.i

CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/NetworkInputSource.cpp -o CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.s

CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o

CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o: ../BinNetworkInputStream.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o -c /mnt/dev/evqueue-core/src/BinNetworkInputStream.cpp

CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/BinNetworkInputStream.cpp > CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.i

CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/BinNetworkInputStream.cpp -o CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.s

CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o

CMakeFiles/evqueue_api.dir/src/hmac.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/hmac.cpp.o: ../hmac.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/hmac.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/hmac.cpp.o -c /mnt/dev/evqueue-core/src/hmac.cpp

CMakeFiles/evqueue_api.dir/src/hmac.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/hmac.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/hmac.cpp > CMakeFiles/evqueue_api.dir/src/hmac.cpp.i

CMakeFiles/evqueue_api.dir/src/hmac.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/hmac.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/hmac.cpp -o CMakeFiles/evqueue_api.dir/src/hmac.cpp.s

CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/hmac.cpp.o

CMakeFiles/evqueue_api.dir/src/sha1.c.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/sha1.c.o: ../sha1.c
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/evqueue_api.dir/src/sha1.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/evqueue_api.dir/src/sha1.c.o   -c /mnt/dev/evqueue-core/src/sha1.c

CMakeFiles/evqueue_api.dir/src/sha1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/evqueue_api.dir/src/sha1.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /mnt/dev/evqueue-core/src/sha1.c > CMakeFiles/evqueue_api.dir/src/sha1.c.i

CMakeFiles/evqueue_api.dir/src/sha1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/evqueue_api.dir/src/sha1.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /mnt/dev/evqueue-core/src/sha1.c -o CMakeFiles/evqueue_api.dir/src/sha1.c.s

CMakeFiles/evqueue_api.dir/src/sha1.c.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/sha1.c.o.requires

CMakeFiles/evqueue_api.dir/src/sha1.c.o.provides: CMakeFiles/evqueue_api.dir/src/sha1.c.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/sha1.c.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/sha1.c.o.provides

CMakeFiles/evqueue_api.dir/src/sha1.c.o.provides.build: CMakeFiles/evqueue_api.dir/src/sha1.c.o

CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o: ../XMLFormatter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o -c /mnt/dev/evqueue-core/src/XMLFormatter.cpp

CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/XMLFormatter.cpp > CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.i

CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/XMLFormatter.cpp -o CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.s

CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o

CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o: CMakeFiles/evqueue_api.dir/flags.make
CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o: ../Sha1String.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/dev/evqueue-core/src/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o -c /mnt/dev/evqueue-core/src/Sha1String.cpp

CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/dev/evqueue-core/src/Sha1String.cpp > CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.i

CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/dev/evqueue-core/src/Sha1String.cpp -o CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.s

CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.requires:
.PHONY : CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.requires

CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.provides: CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.requires
	$(MAKE) -f CMakeFiles/evqueue_api.dir/build.make CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.provides.build
.PHONY : CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.provides

CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.provides.build: CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o

# Object files for target evqueue_api
evqueue_api_OBJECTS = \
"CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/Exception.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/hmac.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/sha1.c.o" \
"CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o" \
"CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o"

# External object files for target evqueue_api
evqueue_api_EXTERNAL_OBJECTS =

evqueue_api: CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/Exception.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/hmac.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/sha1.c.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o
evqueue_api: CMakeFiles/evqueue_api.dir/build.make
evqueue_api: CMakeFiles/evqueue_api.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable evqueue_api"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/evqueue_api.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/evqueue_api.dir/build: evqueue_api
.PHONY : CMakeFiles/evqueue_api.dir/build

CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/evqueue_api.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/ClientBase.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/Exception.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/SocketResponseSAX2Handler.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/SocketSAX2Handler.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/NetworkInputSource.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/BinNetworkInputStream.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/hmac.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/sha1.c.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/XMLFormatter.cpp.o.requires
CMakeFiles/evqueue_api.dir/requires: CMakeFiles/evqueue_api.dir/src/Sha1String.cpp.o.requires
.PHONY : CMakeFiles/evqueue_api.dir/requires

CMakeFiles/evqueue_api.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/evqueue_api.dir/cmake_clean.cmake
.PHONY : CMakeFiles/evqueue_api.dir/clean

CMakeFiles/evqueue_api.dir/depend:
	cd /mnt/dev/evqueue-core/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/dev/evqueue-core /mnt/dev/evqueue-core /mnt/dev/evqueue-core/src/build /mnt/dev/evqueue-core/src/build /mnt/dev/evqueue-core/src/build/CMakeFiles/evqueue_api.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/evqueue_api.dir/depend
