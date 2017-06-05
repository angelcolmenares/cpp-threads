#include <iostream>
#include <future>
#include <pthread.h>
#include <string>
#include "FirstClass.h"
#include "SecondClass.h"
#include "ThirdClass.h"
#include "PThread.h"
#include "TestMyThreadClass.h"
#include "Task.h"
using namespace std;

int square(int x) {
    this_thread::sleep_for(chrono::milliseconds(5000));
    return x * x;
}

void TestCallback( void* testclass  ){
    TestMyThreadClass* tc = (TestMyThreadClass*) testclass;
    tc->WaitForThreadToExit();
    cout<< "callback name "<< tc->GetName() <<" index: " <<  tc->GetIndex() << endl;
    
}

void* TestSimpleTask ( void* taskarg){
    Task* task = (Task*) taskarg;
    cout<< "iniciando TestSimpleTask" << endl;
    this_thread::sleep_for(chrono::milliseconds(2000));
    cout<< " wait  TestSimpleTask" << endl;
    task->Wait();
    cout<< "fin TestSimpleTask" << endl;
    return 0;
}

int main ( int argc, const char* argv[])
{

    auto tc1 = new TestMyThreadClass("aicl");
    tc1->Callback(TestCallback);
    tc1->StartThread();
    tc1->SetIndex("120");
    cout<<"Se esta ejecutando TestMyThreadClass tc1"<<endl ;
    
    auto tc2 = new TestMyThreadClass("clec");
    tc2->SetIndex("130");
    tc2->Callback(TestCallback);
    tc2->StartThread();
    cout<<"Se esta ejecutando TestMyThreadClass tc2"<<endl ;
        
    //tc1->WaitForThreadToExit();
    //cout<<"Finalizado TestMyThreadClass.. tc1 " <<endl;
    
    
    //tc2->WaitForThreadToExit();
    //cout<<"Finalizado TestMyThreadClass.. tc2 " <<endl;

    cout<<"ahora con task" << endl;
    
    //long x=0;
    TaskFactory::StartNewAction(TestSimpleTask);
    
    future<int> async_task = async(launch::async, &square, 10);
    cout<< "ya se lanzo async square"<< endl;
    
    
    
    int j;
    
    for (j=0; j<20;j++){
        this_thread::sleep_for(chrono::milliseconds(200));
        cout<< "j es " << j << endl;
    }
    
    int v = async_task.get(); 
    cout<< "ya tengo square" << endl;
    cout << "The thread returned " << v << endl;
    
    //task->Wait();
    //cout << "finalizado task" << endl;
    
    //cin>> j;
    
        
    return 0;
}
//https://www.classes.cs.uchicago.edu/archive/2013/spring/12300-1/labs/lab6/
//https://github.com/uchicago-cs/cmsc12300/tree/master/examples/cpp/concurrency/simple