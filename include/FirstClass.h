#include <iostream>
#include <string>
#ifndef FIRSTCLASS_H
#define FIRSTCLASS_H

using namespace std;

class FirstClass
{
public:
    FirstClass(const char* name);
    virtual ~FirstClass();
    void PrintName  (const string& index);
    const char* GetName();

protected:

private:
    const char* name;
};

struct FirstClass_Thread {
    int thread_id;
    FirstClass* fc;
};

#endif // FIRSTCLASS_H
