#include "../Log.hpp"

int main(int argc, const char *argv[])
{
    const char *name = "jim";
    LOG("Should we talk, %s%d%d\n", name, 1, 2);
    return 0;
}
