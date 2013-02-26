cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(a)

set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
add_executable(a main.cpp)

install(TARGETS a RUNTIME DESTINATION bin)
