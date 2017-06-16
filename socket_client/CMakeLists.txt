cmake_minimum_required(VERSION 2.8.11)

project(socket_client)



include_directories(
    /home/angel/Code/firstcpp/firstcpp/socket_client/
    /home/angel/Code/firstcpp/firstcpp/socket_client/

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
)

set_source_files_properties(
    ${CXX_SRCS} PROPERTIES COMPILE_FLAGS 
    " -O2 -Wall")

add_executable(socket_client ${CXX_SRCS} ${C_SRCS})

target_link_libraries(socket_client
    boost_system
    pthread
)

