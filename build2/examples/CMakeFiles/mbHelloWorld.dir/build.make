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
include examples/CMakeFiles/mbHelloWorld.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/mbHelloWorld.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/mbHelloWorld.dir/flags.make

examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o: examples/CMakeFiles/mbHelloWorld.dir/flags.make
examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o: ../examples/helloWorld.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/crodriguez/Desktop/monkeybrushplusplus/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o -c /home/crodriguez/Desktop/monkeybrushplusplus/examples/helloWorld.cpp

examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.i"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/crodriguez/Desktop/monkeybrushplusplus/examples/helloWorld.cpp > CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.i

examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.s"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/crodriguez/Desktop/monkeybrushplusplus/examples/helloWorld.cpp -o CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.s

examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.requires:

.PHONY : examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.requires

examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.provides: examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/mbHelloWorld.dir/build.make examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.provides.build
.PHONY : examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.provides

examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.provides.build: examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o


# Object files for target mbHelloWorld
mbHelloWorld_OBJECTS = \
"CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o"

# External object files for target mbHelloWorld
mbHelloWorld_EXTERNAL_OBJECTS =

bin/mbHelloWorld: examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o
bin/mbHelloWorld: examples/CMakeFiles/mbHelloWorld.dir/build.make
bin/mbHelloWorld: lib/libmb.so.1.9.2
bin/mbHelloWorld: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/mbHelloWorld: /usr/lib/x86_64-linux-gnu/libGL.so
bin/mbHelloWorld: /usr/lib/x86_64-linux-gnu/libGLEW.so
bin/mbHelloWorld: /usr/lib/x86_64-linux-gnu/libfreeimage.so
bin/mbHelloWorld: /usr/lib/libglfw3.a
bin/mbHelloWorld: examples/CMakeFiles/mbHelloWorld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/crodriguez/Desktop/monkeybrushplusplus/build2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/mbHelloWorld"
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mbHelloWorld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/mbHelloWorld.dir/build: bin/mbHelloWorld

.PHONY : examples/CMakeFiles/mbHelloWorld.dir/build

examples/CMakeFiles/mbHelloWorld.dir/requires: examples/CMakeFiles/mbHelloWorld.dir/helloWorld.cpp.o.requires

.PHONY : examples/CMakeFiles/mbHelloWorld.dir/requires

examples/CMakeFiles/mbHelloWorld.dir/clean:
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples && $(CMAKE_COMMAND) -P CMakeFiles/mbHelloWorld.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/mbHelloWorld.dir/clean

examples/CMakeFiles/mbHelloWorld.dir/depend:
	cd /home/crodriguez/Desktop/monkeybrushplusplus/build2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/crodriguez/Desktop/monkeybrushplusplus /home/crodriguez/Desktop/monkeybrushplusplus/examples /home/crodriguez/Desktop/monkeybrushplusplus/build2 /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples /home/crodriguez/Desktop/monkeybrushplusplus/build2/examples/CMakeFiles/mbHelloWorld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/mbHelloWorld.dir/depend

