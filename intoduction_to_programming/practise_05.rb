# # 1.
# def vowel_cipher(string)
#     vowels = "aeiou"
#     new_str = ""

#     string.each_char do |char|
        
#         char_i = vowels.index(char)
#         if char_i
#             new_str += vowels[(char_i + 1) % 5]
#         else
#             new_str += char
#         end
#     end

#     return new_str
# end

# puts vowel_cipher("bootcamp") #=> buutcemp
# puts vowel_cipher("paper cup") #=> pepir cap


# # 2.
# def double_letter_count(string)
#     count = 0
    
#     string.each_char.with_index do |char,i|
#         if char == string[i + 1]
#             count += 1
#         end
#     end

#     return count
# end

# puts double_letter_count("the jeep rolled down the hill") #=> 3
# puts double_letter_count("bootcamp") #=> 1

# # 3.
# def adjacent_sum(arr)
#     new_arr = []

#     arr.each_with_index do |num,idx|
#         if  arr[idx] != arr[-1]
#             new_arr << num + arr[idx + 1]
#         end
#     end

#     return new_arr
# end

# print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
# puts
# print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
# puts

# # 4.
# # For example, the base [1, 4, 6] gives us the following pyramid
# #     15
# #   5   10
# # 1   4    6

# def pyramid_sum(base)
#     pyramid_arr = [base]

#     (2..base.length).each do ||
#         pyramid_arr.unshift(sum_slider(pyramid_arr[0]))
#     end

#     return pyramid_arr
# end

# def sum_slider(arr)
#     new_arr = []

#     arr.each_with_index do |num,i|
#         if i != arr.length - 1
#             new_arr << arr[i] + arr[i + 1]
#         end
#     end

#     return new_arr
# end

# print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
# puts

# print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
# puts

# # 5.
# def all_else_equal(arr)
#     sum = 0

#     arr.each { |num| sum += num }
    
#     if arr.include?(sum / 2)
#         return sum / 2
#     else
#         return nil
#     end

# end

# p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
# p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
# p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array


# # 6.
# # Anagrams are words that contain the same characters 
# # but not necessarily in the same order. 
# # Solve this without using .sort

# def anagrams?(word1, word2)

#     if word1.length != word2.length
#         return false
#     end

#     word1.each_char do |char|
#         if ! word2.include?(char)
#             return false
#         end
#     end

#     return true
# end

# puts anagrams?("cat", "act")          #=> true
# puts anagrams?("restful", "fluster")  #=> true
# puts anagrams?("cat", "dog")          #=> false
# puts anagrams?("boot", "bootcamp")    #=> false

# # 7.
# def consonant_cancel(sentence)
#     sent_arr = sentence.split

#     new_sent_arr = sent_arr.map { |word| remove_starting_consonents(word) }
#     new_sent = new_sent_arr.join(" ")
#     return new_sent
# end

# def remove_starting_consonents(word)
#     vowels = "aeiou"

#     word.each_char.with_index do |char,i|
#         if vowels.include?(char)
#             pos = word.index(char)
#             return word[pos..-1]
#         end
#     end

# end

# # puts remove_starting_consonents("hole") #=> ole
# puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
# puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


# # 8.
# def same_char_collapse(word)
#     i = 0

#     while i < word.length
#         if word[i] == word[i + 1]
#             new_word = word[0...i] + word[(i+2)..-1]
#             return same_char_collapse(new_word)
#         else
#             if i == word.length - 1
#                 return word
#             end
#         end
#         i += 1
#     end
# end

# # 8.1
# def collapsable(word)
#     collapse = true

#     while collapse
#         collapse = false
#         word_arr = word.split("")
        
#         word_arr.each.with_index do |char,i|
#             if word[i] == word[i + 1]
#                 word_arr[i] = ""
#                 word_arr[i + 1] = ""
#                 word = word_arr.join("")
#                 collapse = true
#                 break
#             end
#         end

#     end

#     return word
# end


# puts collapsable("zzzxaaxy")   #=> "zy"
# puts same_char_collapse("zzzxaaxy")   #=> "zy"
# # because zzzxaaxy -> zxaaxy -> zxxy -> zy


# puts collapsable("uqrssrqvtt") #=> "uv"
# puts same_char_collapse("uqrssrqvtt") #=> "uv"
# # because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv