#ifndef LOG_HPP
#define LOG_HPP 

// Responsibilty
//   provide a logging system, which is too trivial
//   to give explanation

#include <cstdio>   // printf()

#define ENABLE_LOG 1    // 
#define LOG(args...) do { \
        if (ENABLE_LOG) printf(args);   \
        } while (0);


#endif  //LOG_HPP
