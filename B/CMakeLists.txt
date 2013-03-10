cmake_minimum_required(VERSION 2.8. FATAL_ERROR)

project(b)

add_executable(b main.cpp)

install(TARGETS b RUNTIME DESTINATION bin)
