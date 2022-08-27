=begin 
Problem:
  Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

  Input:
     Integer
  Ouput:
    Integer
  
  Rules:
    Explicit:
      Integer can be positive, negative, or zero
      returns true if numbers absolute value is odd
    
    Implicit: 
        None 
    
  Examples: 
      puts is_odd?(2)    # => false
      puts is_odd?(5)    # => true
      puts is_odd?(-17)  # => true
      puts is_odd?(-8)   # => false
      puts is_odd?(0)    # => false
      puts is_odd?(7)    # => true

  Data structure:
      integer

  Algorithm:
    if the integer divides evenly by 2 (no remainder) then it will return false
    if the integer when divided by 2 gives a remainder, then it will return true 

=end 

# def is_odd?(integer)
#   if integer % 2 == 0 
#     return false
#   end
#   true
# end 

def is_even?(num)
  num % 2 == 0
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true