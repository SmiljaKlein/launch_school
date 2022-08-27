=begin 

Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

=end 

def sequence(integer)
arr = [] 
1.upto(integer) { |num| arr << num }
arr 
end 

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# LS SOLUTION:
  # (1..integer).to_a