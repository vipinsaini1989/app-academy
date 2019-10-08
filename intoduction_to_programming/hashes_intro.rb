# # Data structure - Hashes
# # key => value' pairs

# my_hash = {
#     "name" => "vipin",
#     "age" => "30",
#     "isBoolean" => true,
#     33 => "thirty-three"
# }

# puts my_hash[33]
# puts my_hash.length
# puts my_hash.values
# puts my_hash.keys
# puts my_hash.has_key?('name')
# puts my_hash.has_value?('vip')

# # Hashes enumerables
# # 1.
# my_hash.each do |k,v|
#     puts k
#     puts v
#     puts "---"
# end

# # 2.
# my_hash.each_key do |key|
#     puts key
# end

# # 3.
# my_hash.each_value do |val|
#     puts val
# end


# hashes
# default value is nil
# Hash.new(default)

# new_hash = {}
# # every new entry in hashes is initialize to nil
# puts new_hash["a"] == nil

# # this way we can set any default value for hash
# dog = Hash.new("hello")
# puts dog
# puts dog["a"]

# # lets check how many time each words repeat
# str = "honolulu"
# counter = Hash.new(0)

# str.each_char { |letter| counter[letter] += 1 }
# puts counter

# # sort_by method on hash

# new_str = "mississippi river"
# counter = Hash.new(0)

# new_str.each_char { |char| counter[char] += 1 }
# # puts counter

# sorted_val = counter.sort_by { |k,v| v }
# sorted_key = counter.sort_by { |k,v| k }

# print sorted_key
# puts
# print sorted_val
# puts

# nil
#   - represent 'nothing' or 'empty'
#   - common appear a default value