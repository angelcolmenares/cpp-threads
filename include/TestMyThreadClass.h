#include <iostream>
#include <string>
#include <chrono>
#include <thread>
#include "ThreadInterface.h"

using namespace std;

class TestMyThreadClass:public ThreadInterface
{
public:
    TestMyThreadClass(const string& name);
    ~TestMyThreadClass();
    void PrintName  ();
    void PrintNameAndIndex ();
    void PrintIndex();
    const string& GetName();
    void SetIndex(const string& index);
    const string& GetIndex();
    void Callback( void (*action)(void*) );

protected:
   /** Implement this method in your subclass with the code you want your thread to run. */
   virtual void InternalThreadEntry();
   
private:
   string  name;
   string index;
   function<void(void*)> callback ;

};