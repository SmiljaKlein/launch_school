=begin
  write in markdown 
  How many objects are there after this first set of local variable assignments?
  a = 'hello'
  b = a
  c = 'goodbye'
  d = b

  a, d, b pointing at object hello
  c pointing at object goodbye

  a = a.upcase!
  b += ', world!'
  c = b
  d = c + ' Until tomorrow'
  # at this point in the code, how many objects do we have here? What does the code below output?

  puts a
  puts b
  puts c
  puts d
=end

  # a = 'hello'
  # b = a
  # c = 'goodbye'
  # d = b

  # # a, d, b pointing at object hello
  # # c pointing at object goodbye

  # a = a.upcase! # mutating object in place , mutating methods return the same object, with value mutated. So this is the same object ... 
  # # ^ a = HELLO
  # b += ', world!'
  # c = b
  # d = c + ' Until tomorrow'
  # # at this point in the code, how many objects do we have here? What does the code below output?

  # puts a
  # puts b
  # puts c
  # puts d


# hash = {}

# words = %w[hello goodbye goodnight]
# p words 

# words.each do |word|
#   hash[word] = word.size
# end


# new_hash = hash.select do |_, v| # initializing to the return value of select # first test assessment, go line by line, at end demonstrates the concept. *** were initializing local varaibe. We're passing select this block, block is deliminated by do end keywords and not every do end key work means we have a block, in this example the block follows the method invocation INside the blokc, we are passing each key value pair in the hash referenced to the hash. Evaluating if the current value is greater than integer 5. which is technically a method and technically calling it on b and callinf it as an argument . > is a method . 
#   v > 5
# end

# p new_hash
  

=begin
  go line by line and then pull your thoughts together 
    as mental model
    answer what they want you to answer 
    
=end 

# hash = {}

# words = %w[hello goodbye goodnight]

# words.each do |word|
#   hash[word] = word.size
# end


# new_hash = hash.select do |_, v|
#   v > 5
#   puts 5 # will return an empty hash 
# end

# p new_hash

=begin
when iterating through a collection, don't mutate the actual element we are iterating through 
  lesson 4 quiz 
=end

# arr = ['hi', 'hello']

# arr.each do |string|
#   string.upcase!
# end 
# p arr 

# arr = ['hi', 'hello']

# arr.map! do |string|
#   string.upcase
# end 
# p arr 

# inventory = ['apples', 'oranges', 'bananas']

# def display_inventory
# inventory.each_with_index do |item, index|
#     puts "#{index + 1}. #{item}"
# end 
# end 

# display_inventory

# inventory = ['apples', 'oranges', 'bananas']

# def display_inventory(arr)
#   arr.each_with_index do |item, index|
#     puts "#{index + 1}. #{item}"
#   end
# end

# display_inventory(inventory) # what does this return/output


# num = 1
# multiplier = 2
# array = [1, 2, 3]

# array.each do |num|
#   puts num * multiplier
# end 
# # variable shadowing 

# ['apricot', 'apple', 'apples', 'banana', 'blueberry'].sort 
=begin
go through every code example and explain in your own words
3 major points
  sort method uses whatever the elements in the array are 
    space ship operator 
    nested arrays 
    strings
    numbers 
    see how spaceship operator workds
    - returning either 0, 1, -1 or nil (2 objects of different types)
    sort uses return value to sort the array
    strings are complicated to sort because you use the ASCII position, look at that and familiarize yourself with that. 
    strings compare character by character and if the two strings are teh same, string spaceship considers the longer string to be greater 

=end 
    
=begin 

sort_by 
=end

# strings = ['apples', 'banana', 'grapes']
# strings.sort_by do |string|
#   string[1]
# end 
 # the block tells us what sort_by will do 



 [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]