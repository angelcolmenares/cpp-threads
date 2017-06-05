#include <iostream>
#include <pthread.h>
#include <string>

#ifndef MYTRHEADCLASS
#define MYTRHEADCLASS

using namespace std;

class ThreadInterface
{
public:
   ThreadInterface() ;
   virtual ~ThreadInterface();

   /** Returns true if the thread was successfully started, false if there was an error starting the thread */
   bool StartThread();

   /** Will not return until the internal thread has exited. */
   void WaitForThreadToExit();
   
   friend void* ThreadEntryFunc(void *threadClass);

protected:
   /** Implement this method in your subclass with the code you want your thread to run. */
   virtual void InternalThreadEntry()=0;

private:
  
   pthread_t _thread;
   
};

#endif // MYTRHEADCLASS
//https://stackoverflow.com/questions/1151582/pthread-function-from-a-class