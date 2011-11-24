# cmake file for lapack-3.1
#
project(lastwave C)
cmake_minimum_required(VERSION 2.6)


# Set the project version
set( PROJECT_MAJOR_VERSION 3)
set( PROJECT_MINOR_VERSION 1)
set(LASTWAVE_VERSION "${PROJECT_MAJOR_VERSION}.${PROJECT_MINOR_VERSION}")

#include(FindBLAS)
#link_directories(${BLAS_DIR})

# sources
file(GLOB sources
  LastWave/kernel/src/*.c
  LastWave/package_compress2d/src/*.c
  LastWave/package_dwtrans2d/src/*.c
  LastWave/package_extrema1d/src/*.c
  LastWave/package_image/src/*.c
  LastWave/package_mp/src/*.c
  LastWave/package_mrw/src/*.c
  LastWave/package_owtrans2d/src/*.c
  LastWave/package_signal/src/*.c
  LastWave/package_sound/src/*.c
  LastWave/package_stft/src/*.c
  LastWave/package_wtmm1d/src/*.c
  LastWave/package_wtrans1d/src/*.c
   )

#   LastWave/user/src/*.c

INCLUDE_DIRECTORIES(
  LastWave/kernel/include
  LastWave/package_compress2d/include
  LastWave/package_dwtrans2d/include
  LastWave/package_extrema1d/include
  LastWave/package_image/include
  LastWave/package_mp/include
  LastWave/package_mrw/include
  LastWave/package_owtrans2d/include
  LastWave/package_signal/include
  LastWave/package_sound/include
  LastWave/package_stft/include
  LastWave/package_wtmm1d/include
  LastWave/package_wtrans1d/include
  LastWave/user/include
  LastWave/wxsystem/include 
)

file(GLOB headers
  LastWave/kernel/include/*.h
  LastWave/package_compress2d/include/*.h
  LastWave/package_dwtrans2d/include/*.h
  LastWave/package_extrema1d/include/*.h
  LastWave/package_image/include/*.h
  LastWave/package_mp/include/*.h
  LastWave/package_mrw/include/*.h
  LastWave/package_owtrans2d/include/*.h
  LastWave/package_signal/include/*.h
  LastWave/package_sound/include/*.h
  LastWave/package_stft/include/*.h
  LastWave/package_wtmm1d/include/*.h
  LastWave/package_wtrans1d/include/*.h
  LastWave/wxsystem/include/*.h
   )

# shared library
add_library(lastwave SHARED ${sources})
#target_link_libraries(lapack ${BLAS_LIBRARIES})
set_target_properties(lastwave
	PROPERTIES
	CLEAN_DIRECT_OUTPUT 1
	VERSION		3.1.0
	SOVERSION	3
)

# static library
#add_library(lapack-static STATIC ${sources})
#target_link_libraries(lapack-static BLAS_LIBRARIES)
#set_target_properties(lapack-static
#	PROPERTIES
#	CLEAN_DIRECT_OUTPUT 1
#	OUTPUT_NAME lapack)

# install
install(TARGETS lastwave
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib)

install(FILES ${headers} DESTINATION include/lastwave)

configure_file(${CMAKE_SOURCE_DIR}/lastwave.pc.cmake ${CMAKE_SOURCE_DIR}/lastwave.pc @ONLY)
install(FILES ${CMAKE_SOURCE_DIR}/lastwave.pc DESTINATION lib/pkgconfig)
