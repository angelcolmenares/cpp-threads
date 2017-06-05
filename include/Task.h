#include <iostream>
#include <pthread.h>
#include <string>

#ifndef TASK
#define TASK

class TaskFactory;

class Task
{
    
friend class TaskFactory;
public:
   
   /** Returns true if the thread was successfully started, false if there was an error starting the thread */
   

   /** Will not return until the internal thread has exited. */
   void Wait();
 

private:
   Task();
   ~Task();
   bool StartAction(void* (*action)(void*), void* action_args);
   pthread_t _thread;

};

#endif // TASK

#ifndef TASKFACTORY
#define TASKFACTORY


class TaskFactory{
public:
    static Task* StartNewAction(void* (*action)(void*), void* action_args);
};

#endif // TASKFACTORY