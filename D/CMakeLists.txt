project(d)

add_executable(d natural.cpp main.cpp)

install(TARGETS d RUNTIME DESTINATION bin)
