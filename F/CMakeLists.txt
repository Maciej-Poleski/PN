cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

set(CMAKE_CXX_FLAGS "-std=c++11")

project(e)

add_executable(e filter.cpp main.cpp)

install(TARGETS e RUNTIME DESTINATION bin)
