def hipsterfy(str)
    i = str.length - 1
    vowels = "aeiou"

    while i >= 0
        if vowels.include?(str[i])
            return str[0...i] + str[(i + 1)..-1]
        end
        i -= 1
    end

    str
end

def vowel_counts(str)
    str_hash = Hash.new(0)
    vowels = "aeiou"

    str.each_char do |char|
        lower_char = char.downcase
        if vowels.include?(lower_char)
            str_hash[lower_char] += 1
        end
    end
    
    str_hash
end

def caesar_cipher(str,num)
    alphabets = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""

    str.each_char do |char|
        if alphabets.include?(char)
            pos = alphabets.index(char)
            new_pos = pos + num
            new_str += alphabets[new_pos % 26]
        else
           new_str << char 
        end
        
    end
    
    new_str
end

