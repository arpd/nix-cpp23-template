cmake_minimum_required(VERSION 3.30)

#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(HEADERS
  include/msg.hh
)
add_library(libtemplate
  STATIC
  msg.cc
  ${HEADERS}
)
target_include_directories(libtemplate
  PRIVATE
  ./include
)
add_executable(template
  msg.cc
  main.cc
  ${HEADERS}
)
target_include_directories(template
  PUBLIC ./include
)
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES PUBLIC_HEADER src/include/msg.hh)
