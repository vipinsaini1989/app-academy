# Enumerable methods
# array
#       .each
#       .each_with_index

# string
#       .each_char
#       .each_char.with_index


arr = ["jan","feb","march","april","may"]

# single line iteration
# arr.each { |month| puts month}  # uncomment line to execute this code

# multiline iteration 

arr.each do |month|
    # puts month
end

arr.each_with_index do |month, idx|
    # puts idx,month
end


str = "hello world"

str.each_char do |word|
    # puts word
end

str.each_char.with_index do |letter,idx|
    # puts idx, letter
end


# Range in enumerables
#   (start..end).each - iterate from start to end (included)
#   (start...end).each - iterate from start to end (excluded)

# (1..5).each { |num| puts num }  # uncomment to run this line

def printEvenArr(max)
    arr = []

    (1..max).each do |num|
        if num % 2 == 0
            arr << num
        end
    end

    return arr
end

# print printEvenArr(10)
# puts


# .times - runs the code for that number of times

# (1...5).each { puts "hello" }
# 5.times.each { puts "hi" }