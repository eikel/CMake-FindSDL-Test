cmake_minimum_required(VERSION 3.0)

project(SDLUse)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

add_executable(SDLUse
	SDLUse.cpp
)

find_package(SDL2 2.0.3)
if(SDL2_FOUND)
        target_include_directories(SDLUse PRIVATE ${SDL2_INCLUDE_DIRS})
        target_link_libraries(SDLUse LINK_PRIVATE ${SDL2_LIBRARIES})
endif()

