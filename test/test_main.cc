#include <catch2/catch_test_macros.hpp>

#include "msg.hh"

TEST_CASE("msg() is 'world'")
{
  REQUIRE(msg() == "world");
}
