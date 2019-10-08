# Example 1

def reverse_words(sent)
    sent_arr = sent.split(" ")
    new_sent_arr = []
    
    sent_arr.each do |str|
        new_sent_arr << str.reverse
    end
    
    return new_sent_arr.join(" ")
end

#reverse_words('keep coding') # => 'peek gnidoc'
#puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


# Example 2
#
# Write a method rotate_array that takes in an array and a number. 
# The method should return the array after rotating the elements the specified number of times. 
# A single rotation takes the last element of the array and moves it to the front.

def rotate_array(arr, num)

    num.times {
        new_word = arr.pop
        arr.unshift(new_word)
    }

    return arr
end

# print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
# puts

# print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
# puts
# print [ "a", "b", "c", "d" ].unshift("e")


# Example 3
#
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
    vowel = "aeiou"
    collect_non_vowel = ""

    if vowel.include?(word[0])
        return word + 'yay'
    end

    # non vowel char
    word.each_char.with_index do |char,i|
        if vowel.include?(char)
            before_vowel = word[0...i]
            after_vowel = word[i..-1]
            return after_vowel + before_vowel + "ay"
        end
        
    end

end

# puts pig_latin_word("apple")   # => "appleyay"
# puts pig_latin_word("eat")     # => "eatyay"
# puts pig_latin_word("banana")  # => "ananabay"
# puts pig_latin_word("trash")   # => "ashtray"


# Example 4
# Write a method combinations that takes in an array of unique elements, 
# the method should return a 2D array representing all possible 
# combinations of 2 elements of the array.
# 
def combinations(arr)
    two_d = []

    arr.each_with_index do |ele1,idx1|
        arr.each_with_index do |ele2,idx2|
            if idx2 > idx1
                two_d << [ele1,ele2]
            end
        end
    end

    return two_d
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

# print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
# puts