// wl Tester.cpp implementation file ---------------------------  
// Created by Weijing Liu 
// Copyright (c) 2013 Weijing Liu. All rights reserved.



#include "AutoBlock.hpp"
#include <iostream>
#include <cassert>


 //struct A::Tester 
 //{
      //AUTOBLOCK(testAMethod1)
      //{
          //assert(...)
      //}
      //END_AUTOBLOCK
 //}

AUTOBLOCK(test1)
{
    assert(0);
}
END_AUTOBLOCK

int main(int argc, const char *argv[])
{
    std::cout << "running Tester.cpp\n";
    return 0;
}
