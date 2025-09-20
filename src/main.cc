#include <print>

#include "msg.hh"

int
main(int argc [[maybe_unused]], char** argv [[maybe_unused]])
{
    std::println("Hello, {}!", msg());
}
