# Nested loops

(1..3).each do |num1|
    (1..5).each do |num2|
        # puts num1.to_s + " " + num2.to_s
    end
end

# 2-Dimentional array
arr = [
    ['a','b','c'],
    ['c','d'],
    ['e','f','g']
]

# puts arr[0][1]


def format_name(str)
  fullname_arr = []
  name_arr = str.split(" ")
  
  name_arr.each do |name|
    first_letter = name[0].upcase
    remaining_letter = name[1...name.length].downcase
    fullname_arr << first_letter + remaining_letter
  end

  fullname = fullname_arr.join(" ")
  return fullname
end

# puts format_name("chase WILSON") # => "Chase Wilson"
# puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
    splitted = str.split('@')
      
    if splitted.length != 2
        return false
    end

    left = splitted[0]
    right = splitted[1]
    all_char = "abcdefghijklmnopqrstuvwxyz"

    left.each_char do |char|
        if !all_char.include?(char)
            return false
        end
    end

    if right.split('.').length == 2
        return true
    else
        return false
    end
end

# puts is_valid_email("abc@xy.z")         # => true
# puts is_valid_email("jdoe@gmail.com")   # => true
# puts is_valid_email("jdoe@g@mail.com")  # => false
# puts is_valid_email("jdoe42@gmail.com") # => false
# puts is_valid_email("jdoegmail.com")    # => false
# puts is_valid_email("az@email")          


def array_translate(array)
    transformed_arr = []

    array.each.with_index do |ele,idx|
        if ele.instance_of? Fixnum 
            new_char = ''
            ele.times { new_char += array[idx -1]}
            
            transformed_arr << new_char
        end
    end

    return transformed_arr.join("")
end

# puts 1.instance_of? Fixnum

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts