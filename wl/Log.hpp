#ifndef LOG_HPP
#define LOG_HPP 

// Responsibilty
//   provide a logging system, which is too trivial
//   to give explanation

#include <cstdio>   // printf()

static bool enable_log = true;
#define LOG(args...) do { \
        if (enable_log) \
        printf(args);   \
        } while (0);

#endif  //LOG_HPP
