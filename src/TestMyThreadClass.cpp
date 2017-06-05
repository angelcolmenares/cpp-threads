#include <iostream>
#include <string>
#include <chrono>
#include <thread>


#include "TestMyThreadClass.h"

using namespace std;

TestMyThreadClass::TestMyThreadClass(const string& name)
{
    this->name=name;
}

TestMyThreadClass::~TestMyThreadClass()
{
}

void TestMyThreadClass::PrintName()
{
    cout<< "Nombre: " << this->name << endl; 
}

const string& TestMyThreadClass::GetName()
{
    return this->name;
}


void TestMyThreadClass::PrintNameAndIndex()
{
    cout<< "PrintNameAndIndex"<< endl;;
    int i;
    for(i=0;i<10;i++){
        this_thread::sleep_for(chrono::milliseconds(100));
        this->index= this->index.append(to_string(i) );
        if(callback){
            callback(this);
        }
    }
    
    cout<< "Nombre: " << this->name << " . Index:" << this->index << endl; 
}

void TestMyThreadClass::PrintIndex()
{
    cout<< "Index:" << this->index << endl; 
}

void TestMyThreadClass::SetIndex(const string& index)
{
    this->index= index;
}

void TestMyThreadClass::InternalThreadEntry()
{
    PrintNameAndIndex();
    PrintName();
    PrintIndex();
}

void TestMyThreadClass::Callback(void (*action)(void*))
{
    this->callback=action;
}

const string& TestMyThreadClass::GetIndex()
{
    return this->index;
}
