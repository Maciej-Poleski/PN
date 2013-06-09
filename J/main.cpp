#include <iostream>
#include "rwlock.h"

int main(int argc, char **argv) {
    rwlock lock;
    lock.lock();
    lock.unlock();
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
