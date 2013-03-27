cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(d)

add_executable(d natural.cpp main.cpp)

install(TARGETS d RUNTIME DESTINATION bin)
