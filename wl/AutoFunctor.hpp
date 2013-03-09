// wl AutoFunctor.hpp header file ---------------------------  
// Created by Weijing Liu 
// Copyright (c) 2013 Weijing Liu. All rights reserved.

>>>>>>> version 1.0
#ifndef AUTOFUNCTOR_HPP
#define AUTOFUNCTOR_HPP 


template<class T> class AutoFunctor// : public ITester
{
protected:
    AutoFunctor() 
    {
        trigger_;
    }
private:
    // Auto-trigger a T's constructor at early runtime.
    static T trigger_;
};
template<class T> T AutoFunctor<T>::trigger_;



#endif  //AUTOFUNCTOR_HPP
