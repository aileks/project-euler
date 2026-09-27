# The prime factors of 13195 are 5, 7, 13, and 29.
# What is the largest prime factor of the number 600,851,475,143?

function largest_pf(n)
    current_n = n
    factor = 2
    largest = 1

    while factor^2 <= current_n
        while current_n % factor == 0
            largest = factor
            current_n = div(n, factor)
        end

        factor += 1
    end

    return largest
end

println(largest_pf(600851475143))
