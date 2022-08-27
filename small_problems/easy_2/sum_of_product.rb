=begin

Problem:
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Input: from user 
Output: string 

Rules:
  Explicit:
    - integer entered must be greater than 0 
    - sum or product will be between the entered number and 1 
  Implicit:
    - product will be

Data Structure:
  mehtod definition for message 
  array 
  conditional
Algorithm:
  - get user input and require that the number entered is larger than 0
    - convert this number to an integer
  - get user input whether or not they would like the sum or product 
  - create an array with a range of numbers between 1 and the number that the user input (inclusive)
      - if user wants the sum then add all of the integers in the array and return the total
      - if the user wants the product then multiply all of the integers in the array and return the product.
  - string interpolation - letting the user know the range and either sum or product of the numbers. 

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end 

def prompt(message)
  "#{message}"
end 

p prompt(">> Please enter an integer greater than 0")
integer = gets.chomp.to_i

p prompt(">> Enter 's' to compute the sum, `p` to compute the product:")
answer = gets.chomp

array = (1..integer)
range = "1 and #{integer}"

if answer == 's'
  puts "The sum of the integers between #{range} is #{array.sum}"
else answer == 'p'
  puts "THe product of the integers between #{range} is #{array.inject(:*)}"
end 
