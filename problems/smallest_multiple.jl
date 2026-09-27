# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

function smallest_multiple()
    # the easiest way to approach this is to use all primes up to 20:
    # 2, 3, 5, 7, 11, 13, 17, 19
    # then, we find each prime's value that does not exceed 20:
    # 2^4, 3^2, 5, 7, 11, 13, 17, 19
    # finally, multiply these for the answer
    return 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19
end

println(smallest_multiple())
