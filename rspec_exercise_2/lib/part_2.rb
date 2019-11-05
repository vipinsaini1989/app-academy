def palindrome?(word)
    word.each_char.with_index do |char,i|
        last_word = word[word.length - 1 - i]
        
        if char != last_word
            return false
        end
    end

    true
end

def substrings(str)
    sub_str_arr = []

    str.each_char.with_index do |char,i|
        temp = i
        while temp < str.length
            new_str = str[i..temp]
            sub_str_arr << new_str
            temp += 1
        end
    end

    sub_str_arr
end


def palindrome_substrings(str)
    palindrome_arr = []
    str_arr = substrings(str)

    str_arr.each do |el|
        if el.length > 1 && palindrome?(el)
            palindrome_arr << el
        end
    end

    palindrome_arr
end
