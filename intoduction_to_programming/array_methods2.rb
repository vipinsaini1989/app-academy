# array/string slicing
#       array/string[startIdx..endIdx] - return the new array form the starting and ending point (included)
#       array/string[startIdx...endIdx] - return new array start from startIndex and exclude the last index.

arr = ["apple", "banana", "carrot", "kiwi"]
print arr[1..-1] # includes the last index
puts
print arr[1...-1] # ignore the last index
puts


# String.split - evaluates to array
# array.join - evaluates to string

str = "a little brown cat jump over the lazy dog"

splitted = str.split(" ")
joined = splitted.join("_")

print splitted
puts
puts joined