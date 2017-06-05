cmake_minimum_required(VERSION 2.8.11)

project(firstcpp)



include_directories(
    /home/angel/Code/firstcpp/firstcpp/
    /home/angel/Code/firstcpp/firstcpp/include

)

add_definitions(
    -DNDEBUG
)

# Linker options
set(CMAKE_LDFLAGS "${CMAKE_LDFLAGS}  ")

# Library path
set(CMAKE_LDFLAGS "${CMAKE_LDFLAGS} -L\".\" ")

# Define the CXX sources
set ( CXX_SRCS
    main.cpp
    src/FirstClass.cpp
)

set_source_files_properties(
    ${CXX_SRCS} PROPERTIES COMPILE_FLAGS 
    " -std=c++14 -std=c++11 -O2 -Wall")

add_executable(firstcpp ${CXX_SRCS} ${C_SRCS})

target_link_libraries(firstcpp
    pthread
)

