project(Ply CXX)

include_directories(${Ply_SOURCE_DIR})
add_library(ply SHARED plylib.cpp)
set_property(TARGET ply PROPERTY VERSION 20100824)

install(TARGETS ply LIBRARY DESTINATION lib)
install(FILES plylib.h RENAME vcg-plylib.h DESTINATION include)
install(FILES plystuff.h RENAME vcg-plystuff.h DESTINATION include)
