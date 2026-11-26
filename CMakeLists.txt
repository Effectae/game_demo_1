cmake_minimum_required(VERSION 3.30)
project(DEMO_1 LANGUAGES CXX)

include(cmake/sdl3.cmake)
include(cmake/vulkan.cmake)


file(GLOB_RECURSE ${PROJECT_NAME}_SRC CONFIGURE_DEPENDS src/*.cpp)
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME}
    PRIVATE ${${PROJECT_NAME}_SRC})
target_compile_features(${PROJECT_NAME}
    PRIVATE cxx_std_23)
target_link_libraries(${PROJECT_NAME}
    PRIVATE SDL3::SDL3-${SDL3_LINKAGE}
    PRIVATE Vulkan::HppModule)
