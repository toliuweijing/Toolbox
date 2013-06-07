// wl AutoFunctor.hpp header file ---------------------------  
// Created by Weijing Liu 
// Copyright (c) 2013 Weijing Liu. All rights reserved.

#ifndef AUTOFUNCTOR_HPP
#define AUTOFUNCTOR_HPP 

#include <typeinfo>
#include <cstdio>

template<class T> class AutoFunctor {// : public ITester
protected:
    AutoFunctor() {}
    
    virtual ~AutoFunctor() {
        printf("tester [%s] is passed\n", typeid(trigger_).name());
    }
private:
    // Auto-trigger a T's constructor at early runtime.
    static T trigger_;
};
template<class T> T AutoFunctor<T>::trigger_;



#endif  //AUTOFUNCTOR_HPP
