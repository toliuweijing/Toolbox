#ifndef TESTER_HPP
#define TESTER_HPP 

/**
 * Responsiblity
 *   Provide a standard tester class for unitesting. This Tester.hpp/.cc
 *   work with the Makefile template. All these files reduces the work of 
 *   handwriting a unitester for each class.
 */

namespace wl 
{


template<class T> class ITest
{
public:
    virtual void Run() = 0;
};




}

#endif  //TESTER_HPP
