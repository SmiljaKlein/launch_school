=begin 

Problem:
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Input: integer
Output: Array 

Rules:
  Explicit: 
    - user input for 6 integers
    - checks if the last numbers appears in the first 5 numbers
  Implicit:
     none
  
Data Structure:
Method definition 
iteration 
Array 

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

Algorithm:
  - answer array 
  - message method definition 
  - ask user for the numbers, in order 
      - convert to integer
        - push the integer into the answer array 
  - iterate through the array 
      - use index to check if the last number that was entered is in the first five 
        - use string interpolation to output whether or not the number is in the array.

=end

def prompt(message)
  "#{message}"
end 
answer_array = [] 

p prompt("==> Enter the 1st number:")
answer_array << first_num = gets.chomp.to_i

p prompt("==> Enter the 2nd number:")
answer_array << sec_num = gets.chomp.to_i

p prompt("==> Enter the 3rd number:")
answer_array << third_num = gets.chomp.to_i

p prompt("==> Enter the 4th number:")
answer_array << fourth_num = gets.chomp.to_i

p prompt("==> Enter the 5th number:")
answer_array << fifth_num = gets.chomp.to_i

p prompt("==> Enter the last number:")
sixth_num = gets.chomp.to_i 

if answer_array.include?(sixth_num)
  puts "The number #{sixth_num} appears in #{answer_array}"
else 
  puts "The number #{sixth_num} does not appear in #{answer_array}"
end 

  




      