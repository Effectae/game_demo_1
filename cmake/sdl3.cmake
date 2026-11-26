# Some option for SDL3, and its preconfiging

option(USE_SYSTEM_SDL3 "Use sdl3 from system, not fetch the source")
set(SDL3_LINKAGE "shared" CACHE STRING "SDL3 linkage: shared or static")

set_property(CACHE SDL3_LINKAGE PROPERTY STRINGS shared static)

if(USE_SYSTEM_SDL3)
    find_package(SDL3 REQUIRED CONFIG
        REQUIRED COMPONENTS SDL3-${SDL3_LINKAGE} )
else()
    message(FATAL_ERROR "TODO: Support non-system-sdl3")
endif()
