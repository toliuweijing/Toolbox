#include "AutoBlock.hpp"
#include "String.hpp"
#include <map>
#include <iostream>
#include <cassert>


using std::cout;
using std::map;

struct String::tester 
{
    //struct testPrint : public AutoFunctor<testPrint> 
    AUTOBLOCK(testPrint)
    {
        String a;
        a.Print();
    }
    END_AUTOBLOCK
};


int main(int argc, const char *argv[])
{
    //String::tester::testPrint a;
    //cout << TesterManager::testers_.size();
    //TesterManager::Run();
    return 0;
}
