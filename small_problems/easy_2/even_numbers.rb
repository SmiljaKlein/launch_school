=begin 

Problem:
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

Input: integer
Output: integer

Rules: 
  Explicit: 
    - numbers are inclusive 
      - print each even number on a seperate line
  Implicit:
    none

Data structure:
  array 
  if conditional 

Algorithm:
    - create an array of integers inclusive from 1 to 99
      - iterate through the array and output to the console all of the even numbers. 
=end 

even_array = (1..99).to_a

even_array.each do |number|
  if number.even?
    puts number
  end 
end 