# Advance methods on Array

# map - returns new array having same number of elements
# select - returns new filtered array based on condition passed

arr = [1,2,3,4,5,6,7,8]
str = ["a","b","c","d","e"]


# Try array.map
new_map = str.map { |ele| ele.upcase * 2 }
print new_map
puts

# Try array.select
new_filter = arr.select { |num| num % 2 == 0 }
divide_by_3 = arr.select { |num| num % 3 == 0 }

print new_filter
puts
print divide_by_3
puts

ex_str = ["apple","banana","tomato","kiwi"]

new_str_arr = ex_str.map.each.with_index do |ele,idx|
    first = ele[0].upcase
    rest = ele[1..-1].downcase
    (first + rest) * idx
    #"hello"  #Always return the last line. Print: ["hello","hello","hello","hello"]
end

print new_str_arr
puts