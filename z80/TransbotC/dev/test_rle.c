#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "../src/rle.h"

int main(void)
{
    const unsigned char input[] = {
        0x02, 0x11, 0x82, 0x22, 0x33, 0,
        0x84, 0x44, 0x55, 0x66, 0x77, 0
    };
    const unsigned char expected[] = {
        0x11, 0x44, 0x11, 0x55, 0x22, 0x66, 0x33, 0x77
    };
    const unsigned char short_repeat[] = { 2 };
    const unsigned char overflow[] = { 3, 1, 0 };
    const unsigned char zero_count[] = { 0x80 };
    unsigned char output[8];

    assert(rle_decode(input, sizeof(input), output, 4, 2, 0));
    assert(memcmp(output, expected, sizeof(expected)) == 0);
    assert(rle_decode(input, sizeof(input) - 1, output, 4, 2, 1));
    assert(memcmp(output, expected, sizeof(expected)) == 0);
    assert(!rle_decode(input, sizeof(input) - 1, output, 4, 2, 0));
    assert(!rle_decode(input, sizeof(input), output, 4, 2, 1));
    assert(!rle_decode(short_repeat, sizeof(short_repeat), output, 2, 1, 0));
    assert(!rle_decode(overflow, sizeof(overflow), output, 2, 1, 0));
    assert(!rle_decode(zero_count, sizeof(zero_count), output, 2, 1, 0));
    assert(!rle_decode(input, sizeof(input), output, 0, 2, 0));
    assert(!rle_decode(input, sizeof(input), output, 4, 0, 0));
    puts("RLE tests passed");
    return 0;
}
