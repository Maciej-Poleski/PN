project(h)

add_executable(h code.cpp main.cpp)

install(TARGETS h RUNTIME DESTINATION bin)
