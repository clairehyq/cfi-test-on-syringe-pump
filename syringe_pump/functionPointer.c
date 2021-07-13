#define _GNU_SOURCE
#include <sched.h>
#include <unistd.h> /* sysconf */
#include <stdio.h>

int fun(int a_){
    int a = a_;
}

int main(int argc, char **args) {
	// Bound CPU4 to program execution
	// cpu_set_t mask;
    // unsigned long bitmask = 0;
    
    // CPU_ZERO(&mask);
    
    // CPU_SET(3, &mask); /* add CPU4 to cpu set */

    // /* Set the CPU affinity for a pid */
    // if (sched_setaffinity(0, sizeof(cpu_set_t), &mask) == -1) 
    // {   
    //     perror("sched_setaffinity");
    // }

	/* Test program for function pointers: */
	void (*fun_ptr)(int) = &fun;
	unsigned long start, end;

	// start = usecs();

	for(int index = 0; index < 1; index++){
		(*fun_ptr)(index);
		(*fun_ptr)(index);
		(*fun_ptr)(index);
		(*fun_ptr)(index);
		(*fun_ptr)(index);	
	}
	// end = usecs();

	// printf("Time is %lu\n", end - start);
	
	// CPU_ZERO(&mask);
	return 0;
}
