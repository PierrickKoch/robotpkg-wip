cmake_minimum_required(VERSION 2.8)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/CMakeModules)

# Import the Cython utilities for CMake
include(UseCython)

# Declare JSBSim as a C++ project
set_source_files_properties(jsbsim.pyx PROPERTIES CYTHON_IS_CXX TRUE)

# Build the Python module using Cython and the JSBSim library
include_directories(${JSBSIM_INCLUDE_DIR})
cython_add_module(jsbsim jsbsim.pyx)
target_link_libraries(jsbsim ${JSBSIM_LIBRARY})

INSTALL(TARGETS jsbsim DESTINATION ${PYTHON_INSTDIR})


