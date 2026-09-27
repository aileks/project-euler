# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


function is_prime(n)
    for i in 2:isqrt(n)
        if n % i == 0
            return false
        end
    end

    return true
end

function sum_primes_below_n(n)
    sum = 2
    for i in 3:n
        if is_prime(i)
            sum += i
        end
    end

    return sum
end

# println(sum_primes_below_n(10))
println(sum_primes_below_n(2_000_000))
