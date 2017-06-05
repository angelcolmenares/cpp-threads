#include <iostream>
#include <pthread.h>
#include <string>
#include "Task.h"

Task* TaskFactory::StartNewAction(void* (*action)(void*), void* action_args)
{
    auto task = new Task();
    task->StartAction(action, action_args);
    return task;
}

Task* TaskFactory::StartNewAction(void* (*action)(void*) )
{
    auto task = new Task();
    task->StartAction(action, task);
    return task;
}
