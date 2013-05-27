project(semafor)

set(CMAKE_CXX_FLAGS "-std=c++11")
add_executable(semafor main.cpp)

install(TARGETS semafor RUNTIME DESTINATION bin)
