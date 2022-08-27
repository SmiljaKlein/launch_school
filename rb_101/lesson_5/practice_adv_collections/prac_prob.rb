# # 1. How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']
# arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end 

# 2. How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# answer = books.sort_by do |book|
#   book[:published]
# end 
# p answer

# 3. For each of these collection objects demonstrate how you would reference the letter 'g'.

# arr1 = ['a', 'b', ['c',['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]

# arr2 = [ { first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, { third: ['g', 'h', 'i'] }]
# p arr2[1][:third][0]

# arr3 = [['abc'],['def'], {third: ['ghi']}]
# arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
#  hsh1['b'][1]

# hsh2 = {first: {'d': 3}, second: {'e': 2, 'f': 1}, third: {'g': 0}}
# p hsh2[:third].key(0)


# 4. For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.
# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1 


# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2]= 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2] = 4
# p hsh1 

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# hsh2[["a"]][:a][2] = 4
# p hsh2 

#5. Given this nested hash: figure out the total age of just the male members of the family.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_male_age = 0
# munsters.each_value do |details|
#   total_male_age += details["age"] if details["gender"] == "female"
# end

# p total_male_age 


# 6. One of the most frequently used real-world string properties is that of "string substitution", where we take a hard-coded string and modify it with various parameters from our program.
# Given this previously seen family hash, print out the name, age and gender of each family member:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each_pair do |name, details|
#   puts "#{name} is #{details["age"]} old and are a #{details["gender"]}"
# end 

# 7. Given this code, what would be the final values of a and b?

# a = 2
# b = [5, 8]
# arr = [a, b] 

# arr[0] += 2 
# arr[1][0] -= a 

# a # => 2, # b # => [3, 8]

# 8. Using the each method, write some code to ouput all of the vowels from the strings

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = 'aeiou'
# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#      puts char if vowels.include?(char)
#     end 
#   end
# end 

# 9. Return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically) in descending order. 

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# arr.map do |sub_arr|  #know to use map because in the problem it wants a new array returned. 
#   sub_arr.sort do |a, b|
#     b <=>a
#   end 
# end 

# 10. Use map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1. 

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#     incremented_hash
# end


# 11. Use a combination of methods, including either select or reject, to return a new array identical in structure to the original but containing only the integers that are multiples of 3. 

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# arr.map do |integer|
#   multiples = []
# integer.select do |element|
#   if element % 3 == 0
#     multiples <<  element 
#   end 
# end 
#  multiples
# end 

# 12. Without using Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.  

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# hsh = {}
# arr.each do |item|
#   hsh[item[0]] = item[1]
# end 
# p hsh 

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# 13. Return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain. 
