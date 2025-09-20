#cmake_policy(SET CMP0048 NEW)
# This requires a recent nightly build.
# This will be part of CMake 3.30.0.
cmake_minimum_required(VERSION 3.29.0 FATAL_ERROR)

# Enables the Standard module support. This needs to be done
# before selecting the languages.
set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "0e5b6991-d74f-4b3d-a41c-cf096e0b2508")
set(CMAKE_CXX_MODULE_STD OFF)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS ON)

project(template
  VERSION 0.0.0
  LANGUAGES CXX)


set(CMAKE_GENERATOR Ninja)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)
if(CMAKE_EXPORT_COMPILE_COMMANDS)
  set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES 
    ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})
endif()
set(LLDB_EXPORT_ALL_SYMBOLS ON)

option(TESTING
  "enable testing"
  OFF
)

# Flags: https://best.openssf.org/Compiler-Hardening-Guides/Compiler-Options-Hardening-Guide-for-C-and-C++
add_compile_definitions(
  "_FORTIFY_SOURCE=3" "_GLIBCXX_ASSERTIONS"
  "$<$<CONFIG:RELEASE>:DNDEBUG>"
)
add_compile_options(
  "-Werror" "-Wall" "-Wextra" "-Wpedantic" "-Wreorder" "-Weffc++"
  "-Wformat" "-Wformat=2" "-Wconversion" "-Wimplicit-fallthrough" "-Werror=format-security"
  "-Wno-unused-command-line-argument"
  "-fstrict-flex-arrays=3" "-fstack-clash-protection" "-fstack-protector-strong"
  "-pedantic-errors"
  "$<$<CONFIG:DEBUG>:-O0;-g3;-ggdb>"
  "$<$<CONFIG:RELEASE>:-O2>"
  "-Wl,-z,nodlopen" "-Wl,-z,noexecstack" "-Wl,-z,relro" "-Wl,-z,now"
  "-Wl,--as-needed" "-Wl,--no-copy-dt-needed-entries"
  )

#find_package(Doctest REQUIRED CONFIG)
#find_package(Boost REQUIRED COMPONENTS system)
find_package(Catch2 3 REQUIRED COMPONENTS system)
#find_package(plog REQUIRED CONFIG)

add_subdirectory(src)
if(TESTING)
enable_testing()
add_subdirectory(test)
endif()

install(TARGETS
  template
  RUNTIME
)
install(TARGETS
  libtemplate
  PUBLIC_HEADER
)
