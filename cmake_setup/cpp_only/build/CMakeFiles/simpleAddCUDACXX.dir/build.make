# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build

# Include any dependencies generated for this target.
include CMakeFiles/simpleAddCUDACXX.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simpleAddCUDACXX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simpleAddCUDACXX.dir/flags.make

CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o: CMakeFiles/simpleAddCUDACXX.dir/flags.make
CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o -c /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/main.cpp

CMakeFiles/simpleAddCUDACXX.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simpleAddCUDACXX.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/main.cpp > CMakeFiles/simpleAddCUDACXX.dir/main.cpp.i

CMakeFiles/simpleAddCUDACXX.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simpleAddCUDACXX.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/main.cpp -o CMakeFiles/simpleAddCUDACXX.dir/main.cpp.s

CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.requires

CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.provides: CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/simpleAddCUDACXX.dir/build.make CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.provides

CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.provides.build: CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o


# Object files for target simpleAddCUDACXX
simpleAddCUDACXX_OBJECTS = \
"CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o"

# External object files for target simpleAddCUDACXX
simpleAddCUDACXX_EXTERNAL_OBJECTS =

simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o
simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/build.make
simpleAddCUDACXX: libcpu.a
simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simpleAddCUDACXX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpleAddCUDACXX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simpleAddCUDACXX.dir/build: simpleAddCUDACXX

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/build

CMakeFiles/simpleAddCUDACXX.dir/requires: CMakeFiles/simpleAddCUDACXX.dir/main.cpp.o.requires

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/requires

CMakeFiles/simpleAddCUDACXX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simpleAddCUDACXX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simpleAddCUDACXX.dir/clean

CMakeFiles/simpleAddCUDACXX.dir/depend:
	cd /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_only/build/CMakeFiles/simpleAddCUDACXX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simpleAddCUDACXX.dir/depend

