#include <iostream>
#include <pthread.h>
#include <string>
#include  "PThread.h"
#include "FirstClass.h"

using namespace std;

void *PrintHello(void *threadid)
{
    long tid;
    tid = (long)threadid;
    cout << "Hello World! Thread ID, " << tid << endl;
    pthread_exit(NULL);
}

void* run_threads()
{
    pthread_t threads[NUM_THREADS];
    int rc;
    long i;
    for( i=0; i < NUM_THREADS; i++ ) {
        cout << "main() : creating thread, " << i << endl;
        rc = pthread_create(&threads[i], NULL, PrintHello, (void *)i);

        if (rc) {
            cout << "Error:unable to create thread," << rc << endl;
            exit(-1);
        }
    }
    pthread_exit(NULL);

}


void *PrintHelloFromFirstClass(void* threadarg)
{
    
    FirstClass_Thread* fct = (FirstClass_Thread *) threadarg;
    cout<< "threadId " << fct->thread_id << " ";
    fct->fc->PrintName( to_string(fct->thread_id) );// "to_string( fct->thread_id ).c_str()");
    pthread_exit(NULL);
}

void* run_threads_with_args(void* threadarg)
{
    FirstClass* fc = (FirstClass*) threadarg;
    pthread_t threads[NUM_THREADS];
    FirstClass_Thread fct[NUM_THREADS] ;
    int rc;
    int i;
    for( i=0; i < NUM_THREADS; i++ ) {
        cout << "run thread with args : creating thread, " << i << endl;
        fct[i].thread_id=i;
        fct[i].fc=fc;
        cout<< "Id " <<  fct[i].thread_id << " ";
        rc = pthread_create(&threads[i], NULL, PrintHelloFromFirstClass, (void *)&fct[i]);

        if (rc) {
            cout << "Error:unable to create thread," << rc << endl;
            exit(-1);
        }
    }
    pthread_exit(NULL);
}