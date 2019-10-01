# loops

# 1. while loop
def print_word
    counter = 1
    while counter <=5
        puts counter
        counter += 1
    end
end

# 2. methods with parameters
def print_num(min, max, step)
    i = min
    while i <= max
        puts i

        i += step
    end
end 


# break - stops the loop
#   - kills the loop and exit out 
# next - skip the step
#   - stops the further conditions in the loop

def break_num
    i = 0
    while i < 5
        puts i
        i += 1

        if i == 3 
            # break
            next
        end

        # i += 1  # this is ineffective while using "next"
    end 
end


# print_word
# print_num(10,100,10)
break_num