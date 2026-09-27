# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

function is_prime(n)
    n < 2 && return false
    n == 2 && return true

    for i in 2:isqrt(n)
        if n % i == 0
            return false
        end
    end

    return true
end

function find_nth_prime(n)
    # the n-th prime is the smallest prime number p
    # such that there are exactly n prime numbers <= p

    count = 0
    candidate = 2
    while count < n
        if is_prime(candidate)
            count += 1
            if count == n
                return candidate
            end
        end
        candidate += 1
    end

    return candidate
end

println(find_nth_prime(10001))
