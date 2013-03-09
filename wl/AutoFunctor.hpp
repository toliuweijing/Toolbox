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