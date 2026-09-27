# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

function is_palindrome(n)
    reversed_n = parse(Int, reverse(string(n)))
    return n == reversed_n
end

function largest_3_digit_palindrome()
    # maximize P
    # subject to P = xy
    # P = 100001a + 10010b + 1100c
    # 100 <= x,y <= 999
    # 1 <= a <= 9
    # 0 <= b,c <= 9

    largest = 1
    for x in 100:999
        for y in 100:999
            product = x * y
            if is_palindrome(product) && product > largest
                largest = product
            end
        end
    end

    return largest
end

println(largest_3_digit_palindrome())
