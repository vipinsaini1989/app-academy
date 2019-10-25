# 1.

message = "hello"

def say_message
    p message
end

# say_message
# methods have thier own local scope
# Error: undefined local variable or method `message'

# 2.

def new_method
    $new_message = "hi"
end

new_method
p $new_message # "hi"
# above variable is defined in global scope

# 3.

FOOD = "pizza"  # constant have global scope
# their values can be altered but they can be reassigned

p FOOD.upcase # "PIZZA"

# 4.

# Blocks don't have thier scope
# if..else, while, if..elif..else, .times, .each etc

char = "vipin"

if true
    p char.upcase  # "VIPIN"
end