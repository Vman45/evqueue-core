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

# Utility rule file for man.

# Include the progress variables for this target.
include CMakeFiles/man.dir/progress.make

CMakeFiles/man:

man: CMakeFiles/man
man: CMakeFiles/man.dir/build.make
	gzip -9n /mnt/dev/evqueue-core/src/evqueue.8 --stdout >/mnt/dev/evqueue-core/src/build/evqueue.8.gz
	gzip -9n /mnt/dev/evqueue-core/src/evqueue_wfmanager.8 --stdout >/mnt/dev/evqueue-core/src/build/evqueue_wfmanager.8.gz
	gzip -9n /mnt/dev/evqueue-core/src/evqueue_api.8 --stdout >/mnt/dev/evqueue-core/src/build/evqueue_api.8.gz
	gzip -9n /mnt/dev/evqueue-core/src/evqueue_agent.8 --stdout >/mnt/dev/evqueue-core/src/build/evqueue_agent.8.gz
.PHONY : man

# Rule to build all files generated by this target.
CMakeFiles/man.dir/build: man
.PHONY : CMakeFiles/man.dir/build

CMakeFiles/man.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/man.dir/cmake_clean.cmake
.PHONY : CMakeFiles/man.dir/clean

CMakeFiles/man.dir/depend:
	cd /mnt/dev/evqueue-core/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/dev/evqueue-core /mnt/dev/evqueue-core /mnt/dev/evqueue-core/src/build /mnt/dev/evqueue-core/src/build /mnt/dev/evqueue-core/src/build/CMakeFiles/man.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/man.dir/depend
