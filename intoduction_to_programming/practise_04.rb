# # 1.
# def greatest_factor_array(arr)

#     return arr.map do |num|
#         if num % 2 == 0
#             greatest_factor(num)
#         else
#             num
#         end
#     end

# end


# def greatest_factor(num)

#     (1...num).reverse_each do |i|
#         if num % i == 0
#             return i
#         end
#     end

# end

# print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
# puts
# print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
# puts


# # 2.
# def perfect_square?(num)

#     (1..num).each do |i|
#         if i * i == num
#             return true
#         end

#         if i * i > num
#             return false
#         end
#     end


# end

# puts perfect_square?(5)   #=> false
# puts perfect_square?(12)  #=> false
# puts perfect_square?(30)  #=> false
# puts perfect_square?(9)   #=> true
# puts perfect_square?(25)  #=> true


# # 3.
# def triple_sequence(start, length)
#     new_arr = []
#     num_start = start

#     (1..length).each do |num|
#         new_arr << num_start
#         num_start *= 3
#     end

#     return new_arr
# end

# print triple_sequence(2, 4) # => [2, 6, 18, 54]
# puts
# print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
# puts


# # 4.
# def summation_sequence(start, length)
#     seq = [start]

#     (1...length).each do |ele|
#         seq << sum_of_seq(seq[-1])
#     end

#     return seq
# end

# def sum_of_seq(num)
#     final_num  = 0

#     (1..num).each { |v| final_num += v }

#     return final_num
# end

# print summation_sequence(3, 4) # => [3, 6, 21, 231]
# print summation_sequence(5, 3) # => [5, 15, 120]


# # 5.
# def fibonacci(length)

#     if length == 0
#         return []
#     elsif length == 1
#         return [1]
#     end

#     first_num = 1
#     second_num = 1
#     fibonacci_arr = [first_num,second_num]

#     (length - 2).times do |i|
#         fibonacci_arr << (fibonacci_arr[-1] + fibonacci_arr[-2])
#     end

#     return fibonacci_arr
# end

# print fibonacci(0) # => []
# puts
# print fibonacci(1) # => [1]
# puts
# print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
# puts
# print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
# puts

# 6.
# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
# puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
# puts caesar_cipher("zebra", 4)    #=> "difve"