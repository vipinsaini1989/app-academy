# Inject Method
# Similar to reduce in js
# converge the array and return one final output

p [23,4,5,3].inject { |acc,ele| acc + ele } # 35

# first time:
#   acc = 23 , ele = 4  output: 27

# second time
#   acc = output ie 27, ele = 5 ,output: 32

# third time
#   acc = output ie 32, ele = 3, output: 35


# find minimum in array

p ([12,4,15,7].inject do |acc, ele|
    if ele < acc
        ele
    else
        acc
    end
end)
