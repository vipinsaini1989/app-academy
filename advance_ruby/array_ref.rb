# Array.new(length,default)
# @param length: length of the array 
# @param default: default value of each element in array

arr = Array.new(3,0)
p arr # [0,0,0]

new_arr = Array.new(4)
p new_arr  # [nil,nil,nil,nil]

# same method to generate 2D array
two_d = Array.new(2,[])
p two_d  # [[],[]]

new_two_d = Array.new(2, Array.new(2))
p new_two_d  # [[nil, nil], [nil, nil]]

# GLITCH
new_two_d[0][0] = 'x'
p new_two_d     # [["x", nil], ["x", nil]]
# reason: because both the array refer to same point in the memory


# SOLUTION TO THIS
# 
# create local scope as each local scope point to different memory location
another_two_d = Array.new(2) { Array.new(2) }
p another_two_d     #[[nil, nil], [nil, nil]]

another_two_d[0][0] = "Hello"
p another_two_d  # [["Hello", nil], [nil, nil]]