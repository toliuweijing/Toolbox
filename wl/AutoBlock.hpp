#ifndef AUTOBLOCK_HPP
#define AUTOBLOCK_HPP 

/**
 * AutoBlock macro.
 *  that runs a block of code at early runtime. Notice that
 *  definition of a AutoBlock introduces a new type. Therefore 
 *  only define AutoBlock in a place where a class is usually 
 *  defined. One of its main strength is for writing unit testers.
 * Sample usage:
 *    AUTOBLOCK(testMethod)
 *    {
 *      
 *    }
 *    END_AUTOBLOCK
 */

#include "AutoFunctor.hpp"



#define AUTOBLOCK(METHOD)  \
    struct METHOD  : public AutoFunctor<METHOD> \
    {                                           \
        METHOD()                                

#define END_AUTOBLOCK                           \
    };                             



#endif  //AUTOBLOCK_HPP
