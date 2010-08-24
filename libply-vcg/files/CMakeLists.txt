set(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS true)

# it MUST go before PROJECT(Jafar) in order to work
if (NOT CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR} CACHE INTERNAL "" FORCE)
endif()

cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)

project(Ply CXX C)

include_directories(${Ply_SOURCE_DIR})
add_library(ply SHARED plylib.cpp)
install(TARGETS ply DESTINATION lib)
file(GLOB headers ${Ply_SOURCE_DIR}/*.h)
install(FILES ${headers} DESTINATION include)
