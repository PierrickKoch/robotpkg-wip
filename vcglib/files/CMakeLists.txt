cmake_minimum_required(VERSION 0.0)

project(Ply CXX)
set(version 20100824)

# headers
install(DIRECTORY vcg wrap img DESTINATION include/vcglib
        FILES_MATCHING PATTERN "*.h")

# doxygen
find_package(Doxygen)
if(DOXYGEN_FOUND)
  add_custom_target(doc
	${DOXYGEN_EXECUTABLE} doxyfile
	WORKING_DIRECTORY docs/Doxygen
	COMMENT "Generating API documentation with Doxygen" VERBATIM)
endif(DOXYGEN_FOUND)

# libply
include_directories(wrap/ply)
add_library(vcgply SHARED wrap/ply/plylib.cpp)
set_property(TARGET vcgply PROPERTY VERSION ${version})

install(TARGETS vcgply LIBRARY DESTINATION lib)
