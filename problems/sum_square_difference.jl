# The sum of the squares of the first ten natural numbers is: 1^2 + 2^2 + ... + 10^2 = 385.
# The square of the sum of the first ten natural numbers is: (1 + 2 + ... + 10)^2 = 55^2 = 3025.
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function sum_square_difference(n)
    # the sum of the first positive n integers can be denoted as: [n(n+1)]/2
    # Σ(i=1 to n) i = n(n+1)/2
    square_of_sum = (div(n * (n + 1), 2))^2
    # the sum of squares of the first positive n integers can be denoted as: [n(n+1)(2n+1)]/6
    # Σ(i=1 to n) i^2 = n(n+1)(2n+1)/6
    sum_of_squares = div(n * (n + 1) * (2 * n + 1), 6)

    return square_of_sum - sum_of_squares
end

println(sum_square_difference(100))
