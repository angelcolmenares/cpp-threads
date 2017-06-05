#include "FirstClass.h"

using namespace std;

FirstClass::FirstClass(const char* name)
{
    this->name=name;
}

FirstClass::~FirstClass()
{
    cout << "FirstClass dtor" << endl;
}

void FirstClass::PrintName(const string& index) //(const string& index) //(const char* index)
{
    cout << "this->name" << " " << index << endl;
}


const char* FirstClass::GetName() //(const string& index) //(const char* index)
{
    return this->name;
}