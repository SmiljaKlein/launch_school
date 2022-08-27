# Part 1 
# Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

# def print_1
#   "Hello"
# end 

# def print_2
#   "World"
# end 

# puts print_1 + ' ' + print_2 

# Part 2
# Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + ' ' + world
end 

puts greet 