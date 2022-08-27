=begin 

Problem:
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

Input: integer
Output: odd integers

Rules:
  Explicit:
    - odd numbers printed each on seperate lines
  Implicit:
    - None

Data Structure:
  Range of numbers 
  conditional statement 

Algorithm:
  - create an array with a range of numbers from 1 to 99 (inclusive)
  - iterate through the array:
    - if the number is odd print to the console each number on seperate lines

=end

array = (1..99).to_a
array.each do |number|
  if number.odd?
    puts number
  end 
end 
