#define NUM_THREADS 5

void *PrintHello(void *threadid);

void* run_threads();

void *PrintHelloFromFirstClass(void* threadarg);

void* run_threads_with_args(void* threadarg);