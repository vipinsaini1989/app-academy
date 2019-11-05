def partition(arr,num)
    less_than = []
    greater_than = []

    arr.each do |ele|
        if ele >= num
            greater_than << ele
        else
            less_than << ele
        end
    end

    return [less_than,greater_than]
end

def merge(hash_1,hash_2)
    new_hash = {}

    hash_1.each do |k,v|
        new_hash[k] = v
    end
    
    hash_2.each do |k,v|
        new_hash[k] = v
    end

    new_hash
end

def modifyChar(word)
    vowels = "aeiou"
    new_word = ""

    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_word += "*"
        else
            new_word += char
        end
    end

    new_word
end

def censor(sentence,arr)
    sentence_arr = sentence.split
    new_sent = []

    sentence_arr.each do |word|
        word_down = word.downcase
        
        if arr.include?(word_down)
           new_sent << modifyChar(word) 
        else
            new_sent << word
        end
    end

    new_sent.join(" ")
end


def power_of_two?(num)
    done = false
    i = 0

    while done == false
        done = true
        two_power = 2 ** i
        if two_power >= num
            if two_power == num
                return true
            end
            return false
        end
        i += 1
        done = false
    end
end

