cmake_minimum_required(VERSION 3.2)

set( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules )
find_package(EosSyncLib REQUIRED)

add_subdirectory(OSCRouter)
