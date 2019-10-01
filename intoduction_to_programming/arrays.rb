# Arrays

def doubler(arr)
    doubler_arr = []

    i = 0
    while i < arr.length
        # inserting num in array
        doubler_arr << arr[i] * 2  
        i += 1
    end

    return doubler_arr
end


print doubler([3,4,5])