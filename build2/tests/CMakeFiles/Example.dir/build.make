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

# Include any dependencies generated for this target.
include tests/CMakeFiles/Example.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/Example.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/Example.dir/flags.make

tests/CMakeFiles/Example.dir/Example.cpp.o: tests/CMakeFiles/Example.dir/flags.make
tests/CMakeFiles/Example.dir/Example.cpp.o: ../tests/Example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/crodriguez/Desktop/monkeybrushplusplus/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/Example.dir/Example.cpp.o"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Example.dir/Example.cpp.o -c /home/crodriguez/Desktop/monkeybrushplusplus/tests/Example.cpp

tests/CMakeFiles/Example.dir/Example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Example.dir/Example.cpp.i"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/crodriguez/Desktop/monkeybrushplusplus/tests/Example.cpp > CMakeFiles/Example.dir/Example.cpp.i

tests/CMakeFiles/Example.dir/Example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Example.dir/Example.cpp.s"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/crodriguez/Desktop/monkeybrushplusplus/tests/Example.cpp -o CMakeFiles/Example.dir/Example.cpp.s

tests/CMakeFiles/Example.dir/Example.cpp.o.requires:

.PHONY : tests/CMakeFiles/Example.dir/Example.cpp.o.requires

tests/CMakeFiles/Example.dir/Example.cpp.o.provides: tests/CMakeFiles/Example.dir/Example.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/Example.dir/build.make tests/CMakeFiles/Example.dir/Example.cpp.o.provides.build
.PHONY : tests/CMakeFiles/Example.dir/Example.cpp.o.provides

tests/CMakeFiles/Example.dir/Example.cpp.o.provides.build: tests/CMakeFiles/Example.dir/Example.cpp.o


# Object files for target Example
Example_OBJECTS = \
"CMakeFiles/Example.dir/Example.cpp.o"

# External object files for target Example
Example_EXTERNAL_OBJECTS =

tests/Example: tests/CMakeFiles/Example.dir/Example.cpp.o
tests/Example: tests/CMakeFiles/Example.dir/build.make
tests/Example: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
tests/Example: lib/libmb.so.1.9.2
tests/Example: /usr/lib/x86_64-linux-gnu/libGLU.so
tests/Example: /usr/lib/x86_64-linux-gnu/libGL.so
tests/Example: /usr/lib/x86_64-linux-gnu/libGLEW.so
tests/Example: /usr/lib/x86_64-linux-gnu/libfreeimage.so
tests/Example: /usr/lib/libglfw3.a
tests/Example: tests/CMakeFiles/Example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/crodriguez/Desktop/monkeybrushplusplus/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Example"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/Example.dir/build: tests/Example

.PHONY : tests/CMakeFiles/Example.dir/build

tests/CMakeFiles/Example.dir/requires: tests/CMakeFiles/Example.dir/Example.cpp.o.requires

.PHONY : tests/CMakeFiles/Example.dir/requires

tests/CMakeFiles/Example.dir/clean:
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests && $(CMAKE_COMMAND) -P CMakeFiles/Example.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/Example.dir/clean

tests/CMakeFiles/Example.dir/depend:
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/crodriguez/Desktop/monkeybrushplusplus /home/crodriguez/Desktop/monkeybrushplusplus/tests /home/crodriguez/Desktop/monkeybrushplusplus/build2 /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests /home/crodriguez/Desktop/monkeybrushplusplus/build2/tests/CMakeFiles/Example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/Example.dir/depend

