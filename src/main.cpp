#include <cstdint>
#include <iostream>

struct Data
{
    uint32_t a;
    uint32_t d;
};

bool foobar(const Data& data) {
    if (! data.a || ! data.d) return false;

    uint32_t result = data.d % data.a;
    return result == 0;
}

int main() {
    Data data {
        .a = 5,
        .d = 55
    };

    const auto result = foobar(data);

    return result;
}
