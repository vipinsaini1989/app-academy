# # 1.
def prime?(num)
    count = 0

    if num < 2
        return false
    end

    (2...num).each do |divisor|
        if num % divisor == 0
            return false
        end
    end

    return true
end

# puts prime?(2)  #=> true
# puts prime?(5)  #=> true
# puts prime?(11) #=> true
# puts prime?(4)  #=> false
# puts prime?(9)  #=> false
# puts prime?(-5) #=> false


# # 2.
# def pick_primes(numbers)
#     return numbers.select { |num| prime?(num) }
# end

# print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
# puts
# print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
# puts

# 3.
def prime_factors(num)
    all_factors_arr = []

    (2...num).each do |divisor|
        if num % divisor == 0
            all_factors_arr << divisor
        end
    end

    return all_factors_arr.select { |ele| prime?(ele) }
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts