cmake_minimum_required(VERSION 3.5)

project(simpleAdd)

# Pass options to GCC
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fpic -O3 -std=c++11 ")


find_package(OpenMP REQUIRED)
if(OPENMP_FOUND)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()


add_library(cpu simpleAddCPU.cpp
 simpleAddCPU.hpp)

add_executable(simpleAddCUDACXX main.cpp)

target_link_libraries(simpleAddCUDACXX cpu)