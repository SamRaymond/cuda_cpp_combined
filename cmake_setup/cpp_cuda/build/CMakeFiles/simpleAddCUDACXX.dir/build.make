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
CMAKE_SOURCE_DIR = /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build

# Include any dependencies generated for this target.
include CMakeFiles/simpleAddCUDACXX.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simpleAddCUDACXX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simpleAddCUDACXX.dir/flags.make

CMakeFiles/simpleAddCUDACXX.dir/main.cu.o: CMakeFiles/simpleAddCUDACXX.dir/flags.make
CMakeFiles/simpleAddCUDACXX.dir/main.cu.o: ../main.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/simpleAddCUDACXX.dir/main.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/main.cu -o CMakeFiles/simpleAddCUDACXX.dir/main.cu.o

CMakeFiles/simpleAddCUDACXX.dir/main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/simpleAddCUDACXX.dir/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/simpleAddCUDACXX.dir/main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/simpleAddCUDACXX.dir/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.requires:

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.requires

CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.provides: CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.requires
	$(MAKE) -f CMakeFiles/simpleAddCUDACXX.dir/build.make CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.provides.build
.PHONY : CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.provides

CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.provides.build: CMakeFiles/simpleAddCUDACXX.dir/main.cu.o


# Object files for target simpleAddCUDACXX
simpleAddCUDACXX_OBJECTS = \
"CMakeFiles/simpleAddCUDACXX.dir/main.cu.o"

# External object files for target simpleAddCUDACXX
simpleAddCUDACXX_EXTERNAL_OBJECTS =

CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o: CMakeFiles/simpleAddCUDACXX.dir/main.cu.o
CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o: CMakeFiles/simpleAddCUDACXX.dir/build.make
CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o: libcpu.a
CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o: libgpu.a
CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o: CMakeFiles/simpleAddCUDACXX.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpleAddCUDACXX.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simpleAddCUDACXX.dir/build: CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/build

# Object files for target simpleAddCUDACXX
simpleAddCUDACXX_OBJECTS = \
"CMakeFiles/simpleAddCUDACXX.dir/main.cu.o"

# External object files for target simpleAddCUDACXX
simpleAddCUDACXX_EXTERNAL_OBJECTS =

simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/main.cu.o
simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/build.make
simpleAddCUDACXX: libcpu.a
simpleAddCUDACXX: libgpu.a
simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/cmake_device_link.o
simpleAddCUDACXX: CMakeFiles/simpleAddCUDACXX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable simpleAddCUDACXX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpleAddCUDACXX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simpleAddCUDACXX.dir/build: simpleAddCUDACXX

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/build

CMakeFiles/simpleAddCUDACXX.dir/requires: CMakeFiles/simpleAddCUDACXX.dir/main.cu.o.requires

.PHONY : CMakeFiles/simpleAddCUDACXX.dir/requires

CMakeFiles/simpleAddCUDACXX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simpleAddCUDACXX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simpleAddCUDACXX.dir/clean

CMakeFiles/simpleAddCUDACXX.dir/depend:
	cd /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build /home/sjr/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles/simpleAddCUDACXX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simpleAddCUDACXX.dir/depend
