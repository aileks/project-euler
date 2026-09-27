# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2.
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product a * b * c.

function find_pythagorean_triplet()
    # a + b + c = 100
    # c = 1000 - a - b
    # a^2 + b^2 = c^2
    # Therefore: a^2 + b^2 = (1000 - a - b)^2
    # Simplified: (a - 1000)(b - 1000) = 500,000
    # With: a < b < 1000 - a - b
    for a in 1:1000
        for b in (a+1):1000
            c = 1000 - a - b

            if b < c && a^2 + b^2 == c^2
                return a * b * c
            end
        end
    end

    return 0
end

println(find_pythagorean_triplet())
