#include "kernel.cuh"

int main() {
	MyKernel<int><<<(1), (1)>>>(nullptr);
	cudaDeviceSynchronize();
}
