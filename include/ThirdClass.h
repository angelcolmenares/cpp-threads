#include <string>

#ifndef THIRDCLASS_H
#define THIRDCLASS_H

using namespace std;

class ThirdClass
{
public:
    ThirdClass();
    ~ThirdClass();
    
    const string& GetSomeString() const {
        return someString;
    }

    ThirdClass& SetSomeString(const string& someString) {
        this->someString = someString;
        return *this;
    }
    

private:
    string someString;
    
    //string& otherString;
    
    
    

};

#endif // THIRDCLASS_H
