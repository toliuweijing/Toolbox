#ifndef COUNT_HPP
#define COUNT_HPP 


#include <typeinfo>
#include <iostream>

namespace wl {


/**
 * Responsibility:
 *  1.count up allocation/deallcation on a class of objects
 *  2.provide objects statistics at the end of program
 *  3.detect memory leaks at the end of program
 * Sample Usage:
 *  class A 
 *  {
 *      ...
 *      Counter<A> cnter;
 *  }
 */
template<class T>
class Counter
{
    static int objects_alive_;
    static int objects_created_;
    static Counter end_of_program_trigger_;

public:
    Counter() throw()
    {
        ++objects_alive_;
        ++objects_created_;
    }


    ~Counter() throw()
    {
        --objects_alive_;
        if (this == &end_of_program_trigger_)
        {
            CheckStatistics();
        }
    }

    static int HowManyAlive() throw()
    { 
        return objects_alive_ - 1; 
    }

    static int HowManyCreated() throw()
    {
        return objects_created_ - 1;
    }

private:
    void CheckStatistics() 
    {
        if (objects_alive_ > 0) 
        {
            const char *alart = "memory leak on ";
            std::cerr << alart <<  typeid(T).name() << "!\n";
            std::cerr << "objects created: " <<  HowManyCreated()<< "\n";
            std::cerr << "objects alive: " <<  HowManyAlive() << "\n";
        }
    }
};
template<class T> Counter<T> Counter<T>::end_of_program_trigger_;
template<class T> int Counter<T>::objects_alive_(0);
template<class T> int Counter<T>::objects_created_(0);

};

#endif

