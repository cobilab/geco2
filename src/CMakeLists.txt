cmake_minimum_required(VERSION 2.8.4)

SET( CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}" )
IF(UNIX)
 link_libraries(m)
ENDIF(UNIX)

project (GeCo2) 
SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})
SET(RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
SET(CMAKE_BUILD_TYPE Release)

add_executable (GeCo2 geco2.c mem.c msg.c common.c buffer.c levels.c pmodels.c context.c bitio.c arith.c arith_aux.c defs.h) 
add_executable (GeDe2 gede2.c mem.c msg.c common.c buffer.c levels.c pmodels.c context.c bitio.c arith.c arith_aux.c defs.h) 

