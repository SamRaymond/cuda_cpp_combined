CXX = g++
GPU = nvcc
CFLAGS = -fopenmp
GPUFLAGS = -Xcompiler -fopenmp
TARGET = simpleAdd
CUDA = simpleAdd_cuda
all: $(TARGET)

$(TARGET): $(TARGET).cpp
	$(CXX) $(CFLAGS) -o $(TARGET) $(TARGET).cpp
	# Multithreaded CPU

clean:
	$(RM) $(TARGET) 
	$(RM) $(CUDA)

cuda: $(CUDA)
$(CUDA): main.cu simpleAddGPU.cu simpleAddCPU.cpp
	$(GPU) $(GPUFLAGS) -o $(CUDA) main.cu simpleAddGPU.cu simpleAddCPU.cpp -I.
	# Compiles the cuda code and allows for omp statements 
