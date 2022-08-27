=begin
Problem:
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Input: integer
Output: string 

Rules:
  Explicit:
    - the return value is the sum of digits that form the integer 
  Implicit:
    - none 

Algorithm:
  - iterate through an array 
    - increase the 
  - 


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
=end 

def sum(number)
  sum = 0

  array = number.to_s.chars
  array.each do |integer|
   sum += integer.to_i
  end 
sum
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45