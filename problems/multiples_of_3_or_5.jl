# If we list natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9.
# The sum of these multiples is 23. Find the sum of all multiples of 3 or 5 below 1000.

function sum_multiples(k, limit)
    n = div((limit - 1), k)
    return k * div(n * (n + 1), 2)
end

answer = sum_multiples(3, 1000) + sum_multiples(5, 1000) - sum_multiples(15, 1000)
println(answer)
