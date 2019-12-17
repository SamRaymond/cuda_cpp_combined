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
CMAKE_SOURCE_DIR = /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build

# Include any dependencies generated for this target.
include CMakeFiles/gpu.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gpu.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gpu.dir/flags.make

CMakeFiles/gpu.dir/simpleAddGPU.cu.o: CMakeFiles/gpu.dir/flags.make
CMakeFiles/gpu.dir/simpleAddGPU.cu.o: ../simpleAddGPU.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/gpu.dir/simpleAddGPU.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/simpleAddGPU.cu -o CMakeFiles/gpu.dir/simpleAddGPU.cu.o

CMakeFiles/gpu.dir/simpleAddGPU.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/gpu.dir/simpleAddGPU.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/gpu.dir/simpleAddGPU.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/gpu.dir/simpleAddGPU.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/gpu.dir/simpleAddGPU.cu.o.requires:

.PHONY : CMakeFiles/gpu.dir/simpleAddGPU.cu.o.requires

CMakeFiles/gpu.dir/simpleAddGPU.cu.o.provides: CMakeFiles/gpu.dir/simpleAddGPU.cu.o.requires
	$(MAKE) -f CMakeFiles/gpu.dir/build.make CMakeFiles/gpu.dir/simpleAddGPU.cu.o.provides.build
.PHONY : CMakeFiles/gpu.dir/simpleAddGPU.cu.o.provides

CMakeFiles/gpu.dir/simpleAddGPU.cu.o.provides.build: CMakeFiles/gpu.dir/simpleAddGPU.cu.o


# Object files for target gpu
gpu_OBJECTS = \
"CMakeFiles/gpu.dir/simpleAddGPU.cu.o"

# External object files for target gpu
gpu_EXTERNAL_OBJECTS =

libgpu.a: CMakeFiles/gpu.dir/simpleAddGPU.cu.o
libgpu.a: CMakeFiles/gpu.dir/build.make
libgpu.a: CMakeFiles/gpu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA static library libgpu.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gpu.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gpu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gpu.dir/build: libgpu.a

.PHONY : CMakeFiles/gpu.dir/build

CMakeFiles/gpu.dir/requires: CMakeFiles/gpu.dir/simpleAddGPU.cu.o.requires

.PHONY : CMakeFiles/gpu.dir/requires

CMakeFiles/gpu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gpu.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gpu.dir/clean

CMakeFiles/gpu.dir/depend:
	cd /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build /home/sjr/Desktop/cuda_cpp_combined/cmake_setup/cpp_cuda/build/CMakeFiles/gpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gpu.dir/depend

