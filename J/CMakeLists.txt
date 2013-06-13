cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

set(CMAKE_CXX_FLAGS "-std=c++11 -pthread")
project(j)

add_executable(j main.cpp)

install(TARGETS j RUNTIME DESTINATION bin)
