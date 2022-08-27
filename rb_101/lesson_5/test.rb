# selection 
# arr = [1, 2, 3, 4, 5]

# new_arr = []
# counter = 0

# loop do 
#   if arr[counter].odd?
#     new_arr << arr[counter]
#   end
#   counter += 1
#   break if counter == arr.size
# end 

# p new_arr


# arr = [1, 2, 3, 4, 5].select do |num|
#   4 - 4 == 5
# end

# p arr 

# arr = [1, 2, 3, 4, 5]
#   arr.select do |num|
#     puts num.odd?
#   end 
#   p arr 

# select with hashes 
# hash = { :c => "cat", :d => "dog", :f => "farrot" }
# answer = hash.select do |key, value|
#   value.size > 3
# end 
# p answer 

# hash = { :c => "cat", :d => "dog", :f => "farrot" }
# answer = hash.select do |key, value|
#   key.to_s < "f"
# end 
# p answer 

# loop with hashes for selection 
# hash = { :c => "cat", :d => "dog", :f => "farrot" }
# answer = {} 
# counter = 0
# keys = hash.keys

# loop do 
#   letter = keys[counter]
#   if letter.to_s < "f"
#     answer[letter] = hash[letter] # cannot use << operator on hashes 
#     # ^ hash  ^ key    ^ value ^ 
#   end 
#     counter += 1
#     break if counter == hash.size
#   end 
#   p answer 


# Transformation
# arr = [1, 2, 3, 4]
# new_var = arr.map do |num|
#   puts num + 2
# end 

# p new_var
# p arr

# arr = [1, 2, 3, 4]
# new_var = arr.map do |num|
#   num > 3
# end 

# p new_var
# p arr

# arr = [1, 2, 3, 4]
# new_var = arr.map do |num|
#  num + 2
# end 

# p new_var
# p arr

# arr = [1, 2, 3, 4]

# new_arr = []
# counter = 0

# loop do 
#   new_arr << arr[counter] + 2
#   counter += 1
#   break if counter == arr.size
# end 

# p new_arr
# p arr 

#Transformation with hashes map **** MUST PRACTICE MORE *****
# hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
# answer = {} 
# hash.map do |key, value|
#   answer[key.to_sym] = hash[key]
# end
# p answer 


# Each - iteration 
# *** ITERATES THROUGH A COLLECTION APPLYING THE BLOCK ONCE TO EACH ELEMENT IN TURN ***
 
# arr = [1, 2, 3, 4, 5]
# arr.each do |num|
#   p num * 2 # Will return the number on individual lines because of the each method 
# end 

# p arr 

# each method with hashes 
# hash = { :c => "cat", :d => "dog", :f => "farrot" }
# arr = [] 
# hash.each do |key, value|
#   arr << value + '!'
# end 
# p arr 
# p hash 

# hash = { :c => "cat", :d => "dog", :f => "farrot" }
# hash.each do |key, value|
#   nil
# end 
# p hash 

