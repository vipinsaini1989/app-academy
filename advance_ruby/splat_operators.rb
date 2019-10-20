# Splat Operator Notes
# splat (*) operator in Ruby.

def two_args(arg1,arg2)
    p arg1
    p arg2
end

# two_args("a","b","c","d")  # Argument Error: wrong number of arguments (given 4, expected 2)

def multi_args(arg1,arg2,*optional)
    p arg1      # "a"
    p arg2      # "b"
    p optional  # ["c","d"]
end

# multi_args("a","b","c","d")

def greet(firstname,lastname)
    p "hello " + firstname + " " + lastname
end

name = ["vipin","saini"]
# greet(name) # Throw err
# greet(*name)

arr_1 = ["a","b"]
arr_2 = ["c","d"]
arr_3 = [ *arr_1, *arr_2, "e" ]
# p arr_3  # ["a", "b", "c", "d", "e"]


# double splat to join hash
# only work if keys are symbols
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
# p new_hash