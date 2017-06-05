#include "ThreadInterface.h"

void* ThreadEntryFunc(void *threadClass){
    ThreadInterface * tc = (ThreadInterface *) threadClass;
    tc->InternalThreadEntry();
    return NULL;
}


ThreadInterface::ThreadInterface()
{
}

ThreadInterface::~ThreadInterface()
{
}

bool ThreadInterface::StartThread(){
    return (pthread_create(&_thread, NULL, ThreadEntryFunc, this) == 0);
}


void ThreadInterface::WaitForThreadToExit()
{
    (void) pthread_join(_thread, NULL);
}
