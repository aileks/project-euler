# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

function is_palindrome(n)
    n < 0 && return false

    original = n
    reversed = 0

    while n > 0
        reversed = 10 * reversed + n % 10
        n = div(n, 10)
    end

    return original == reversed
end

function largest_3_digit_palindrome()
    # Maximize P = xy
    # where 100 ≤ x, y ≤ 999
    # and P is a palindrome

    largest = 0
    largest_pair = (0, 0)

    for x in 999:-1:100
        # since y <= x, x^2 is the largest remaining possible product
        x * x <= largest && break

        for y in x:-1:100
            product = x * y
            product <= largest && break

            if is_palindrome(product)
                largest = product
                largest_pair = (x, y)

                # this is the largest possible palindrome for this value of x
                break
            end
        end
    end

    return largest, largest_pair
end

palindrome, (x, y) = largest_3_digit_palindrome()

println("$palindrome = $x * $y")
