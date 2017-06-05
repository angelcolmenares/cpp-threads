#include <iostream>
#include <pthread.h>
#include <string>
#include "Task.h"
Task::Task()
{
}

Task::~Task()
{
}


bool Task::StartAction(void* (*action)(void*), void* action_args )
{
    return (pthread_create(&_thread, NULL, action, action_args) == 0);
}

void Task::Wait()
{
    (void) pthread_join(_thread, NULL);
}
