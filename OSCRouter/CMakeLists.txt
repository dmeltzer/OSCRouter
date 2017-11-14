cmake_minimum_required(VERSION 3.2)
project(EosSyncLib)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES 
    EosPlatform.cpp
    ItemState.cpp
    main.cpp
    MainWindow.cpp
    NetworkUtils.cpp
    Router.cpp
)

set(MOC_HEADERS MainWindow.h)

if(APPLE)
    set(SOURCE_FILES 
        ${SOURCE_FILES}
        EosPlatform_Mac.cpp
    )
endif(APPLE)

find_package( Qt4 4.8.2 COMPONENTS QtMain QtCore QtGui QtNetwork REQUIRED )
include( ${QT_USE_FILE} )
add_definitions( ${QT_DEFINITIONS} )
include_directories( ${CMAKE_BINARY_DIR} ${EOSSYNCLIB_INCLUDE_DIR} )
QT4_WRAP_CPP( MOC_SRCS ${MOC_HEADERS})

add_executable(OSCRouter ${SOURCE_FILES} ${MOC_SRCS})
target_link_libraries( OSCRouter ${QT_LIBRARIES} ${EOSSYNCLIB_LIBRARIES} ${QT_QTNETWORK_LIBRARY})
install(TARGETS OSCRouter DESTINATION bin)
