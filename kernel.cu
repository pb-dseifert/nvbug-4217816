// TO "FIX" THE BUG, DO ONE OF THE FOLLOWING:
//
// 1. comment out the #include "kernel.cuh" on line 7
// 2. or remove the top-level, right-most const in the MyKernel definition on line 12
// 3. or add the top-level, right-most const in the MyKernel declaration on line 2 in kernel.cuh

#include "kernel.cuh"

#include <stdio.h>

template <typename T>
__global__ void MyKernel(const void* const) { printf("Hello World\n"); }

template __global__ void MyKernel<int>(const void*);
