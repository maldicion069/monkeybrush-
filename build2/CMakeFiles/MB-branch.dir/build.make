# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/crodriguez/Desktop/monkeybrushplusplus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/crodriguez/Desktop/monkeybrushplusplus/build2

# Utility rule file for MB-branch.

# Include the progress variables for this target.
include CMakeFiles/MB-branch.dir/progress.make

CMakeFiles/MB-branch:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/crodriguez/Desktop/monkeybrushplusplus/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Add remote branch 1.9"
	cd /home/crodriguez/Desktop/monkeybrushplusplus && /usr/bin/git push origin 1.9

MB-branch: CMakeFiles/MB-branch
MB-branch: CMakeFiles/MB-branch.dir/build.make

.PHONY : MB-branch

# Rule to build all files generated by this target.
CMakeFiles/MB-branch.dir/build: MB-branch

.PHONY : CMakeFiles/MB-branch.dir/build

CMakeFiles/MB-branch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MB-branch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MB-branch.dir/clean

CMakeFiles/MB-branch.dir/depend:
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/crodriguez/Desktop/monkeybrushplusplus /home/crodriguez/Desktop/monkeybrushplusplus /home/crodriguez/Desktop/monkeybrushplusplus/build2 /home/crodriguez/Desktop/monkeybrushplusplus/build2 /home/crodriguez/Desktop/monkeybrushplusplus/build2/CMakeFiles/MB-branch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MB-branch.dir/depend

