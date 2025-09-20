cmake_minimum_required(VERSION 3.29.0 FATAL_ERROR)

include_directories(../src/include)

add_executable(template-ut
  test_main.cc
  ../src/msg.cc
)

target_link_libraries(template-ut
  PRIVATE Catch2::Catch2WithMain
)

add_test(template
  template-ut
)
