#include <stdint.h>
#include <stdio.h>

/* The prime factors of 13195 are 5, 7, 13 and 29. What is the largest
 * prime factor of the number 600851475143? */

int main(void) {
    uint64_t largest_factor = 0;
    uint64_t n = 600851475143;

    while (n % 2 == 0) {
        largest_factor = 2;
        n /= 2;
    }

    for (uint64_t i = 3; i <= n / i; i += 2) {
        if (n % i == 0) {
            largest_factor = i;

            while (n % i == 0) {
                n /= i;
            }
        }
    }

    if (n > 1) {
        largest_factor = n;
    }

    printf("Answer: %ju\n", (uintmax_t)largest_factor);

    return 0;
}
