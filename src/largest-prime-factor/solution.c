#include <limits.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>

/* The prime factors of 13195 are 5, 7, 13 and 29. What is the largest
 * prime factor of the number 600851475143? */

int is_prime(uint64_t n) {
    uint64_t limit = (uint64_t)sqrt((double)n);

    for (uint64_t i = 2; i <= limit; ++i) {
        if (n % i == 0) {
            return 0;
        }
    }

    return 1;
}

int main(void) {
    uint64_t largest_factor = 0;
    uint64_t n = 600851475143;

    for (uint64_t i = 2; i <= n; ++i) {
        if ((i == 2 || i % 2 != 0) && n % i == 0) {
            if (is_prime(i) == 1) {
                n /= i;
                if (i > largest_factor) {
                    largest_factor = i;
                }
            }
        }
    }

    printf("Answer: %lu\n", largest_factor);

    return 0;
}
