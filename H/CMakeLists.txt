cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(h)

add_executable(h code.cpp main.cpp)

install(TARGETS h RUNTIME DESTINATION bin)
