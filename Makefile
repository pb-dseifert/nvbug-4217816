.SUFFIXES: .cu .o

.cu.o:
	nvcc -gencode arch=compute_80,code=sm_80 -c -o $@ $<

test: test.o kernel.o
	nvcc -o $@ $^

clean:
	rm -f test test.o kernel.o

# CORRECT: prints "Hello World"
# BUG:     prints nothing
check: test
	@./test

kernel.o: kernel.cu kernel.cuh
test.o: test.cu kernel.cuh
