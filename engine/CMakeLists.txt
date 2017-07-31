cmake_minimum_required(VERSION 3.2)
project(WebSocketExample)

set(CMAKE_CXX_STANDARD 11)

find_package(OpenCV REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        client.cpp
        easywsclient.cpp
        easywsclient.hpp
        image_encode.cpp
        image_encode.h)

add_executable(WebSocketExample ${SOURCE_FILES})

include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(WebSocketExample ${OpenCV_LIBS})