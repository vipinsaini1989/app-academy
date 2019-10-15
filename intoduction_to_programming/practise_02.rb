# # 1.
# def map_by_name(arr)
#     new_arr = arr.map { |ele| ele["name"] }
#     return new_arr
# end


# pets = [
#   {"type"=>"dog", "name"=>"Rolo"},
#   {"type"=>"cat", "name"=>"Sunny"},
#   {"type"=>"rat", "name"=>"Saki"},
#   {"type"=>"dog", "name"=>"Finn"},
#   {"type"=>"cat", "name"=>"Buffy"}
# ]
# print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
# puts

# countries = [
#  {"name"=>"Japan", "continent"=>"Asia"},
#  {"name"=>"Hungary", "continent"=>"Europe"},
#  {"name"=>"Kenya", "continent"=>"Africa"},
# ]
# print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
# puts



# # 2.
# def map_by_key(arr, key)
#     return arr.map { |hash| hash[key] }
# end

# locations = [
#   {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
#   {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
#   {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
# ]

# print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
# puts
# print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
# puts


# # 3.
# def yell_sentence(sent)
#     sent_arr = sent.split(" ")
    
#     modified_arr = sent_arr.map { |word| word.upcase + "!" }

#     return modified_arr.join(" ")
# end

# puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"



# # 4.
# def whisper_words(words)
#     return words.map { |word| word.downcase + "…" }
# end

# print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
# puts


# # 5.
# def o_words(sentence)
#     return sentence.split.select { |word| word.include?('o') }
# end

# print o_words("How did you do that?") #=> ["How", "you", "do"]
# puts


# # 6.
# def last_index(str, char)
#     i = (str.length) -1

#     while i >= 0
#         if str[i] == char
#             return i
#         end
#         i -=1
#     end

# end

# puts last_index("abca", "a")       #=> 3
# puts last_index("mississipi", "i") #=> 9
# puts last_index("octagon", "o")    #=> 5
# puts last_index("programming", "m")#=> 7

# # 7.
# def most_vowels(sentence)
#     new_sent = sentence.split
#     vowels = "aeiou"
#     count = 0
#     word_hash = {}

#     new_sent.each do |word| 
#         word.each_char do |char|
#             if vowels.include?(char)
#                 count += 1
#             end
#         end
#         word_hash[word] = count
#         count = 0
#     end

#     sorted = word_hash.sort_by { |k, v| v }
#     return sorted[-1][0]

# end

# print most_vowels("what a wonderful life") #=> "wonderful"
# puts