arr = ["mango","banana","apple"]

# << shovel operator - Add element at the end of the array
arr << "grapes"

# array.push - Add element at the end of the array
arr.push("lichi", "pear")

# array.pop - Remove element frm the end of the array
# return the removed element from array
arr.pop()

#  Another way of using array.pop
arr.pop

# array.unshift - Add element to the front of the array
# array.shift - Remove element form the front

arr.unshift("watermelon")

# if method don't need parameter then we need not to add parenthisis 
arr.shift


# array/string.index(ele) - returns the index of the ele, return not if not found
# array/stirng.include?(ele) - always return boolean regarding ele 

new_arr = ["AS","DG","TE"]

puts new_arr.index('AS') # result: 0
puts new_arr.index('BF') # result: 

puts new_arr.include?('DG') # result: true
puts new_arr.include?('SG') # result: false


# array/string.reverse - evalutes new array or string version
# array/string.reverse! - reverse the existing array/string

firstname = "vipin"
lastname = "saini"

firstname.reverse
reversed_str = firstname.reverse

lastname.reverse!

puts firstname
puts lastname
puts reversed_str