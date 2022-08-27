=begin 

Problem:
Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

Input: integer
Output: integer

Rules:
  Explicit: 
    - user inputs 2 positive integers
    - add, subtract, multiply, quotient, and power of the two integers
  Implicit:
    - output entire operation with result 

Data Structure:


Algorithm:
  - use prompt method definition to ask user for the two numbers
      - convert the two numbers to integers

  - define methods for each operation: 
    - addition 
    - subtraction
    - multiplication
    - quotient 
    - modulo 
    - power
  - Output each operation to the console 

Example:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end 

def prompt(message)
  "#{message}"
end 

def add(num1, num2)
  "#{num1} - #{num2} = #{num1 - num2}"
end 

def subtract(num1, num2)
  "#{num1} + #{num2} = #{num1 + num2}"
end 

def multiply(num1, num2)
  "#{num1} * #{num2} = #{num1 * num2}"
end 

def divide(num1, num2)
  "#{num1} / #{num2} = #{num1 / num2}"
end 

def modulo(num1, num2)
  "#{num1} % #{num2} = #{num1 % num2}"
end 

def power(num1, num2)
  "#{num1} ** #{num2} = #{num1 ** num2}"
end 

p prompt("==> Enter the first number:")
first_num = gets.chomp.to_i

p prompt("==> Enter the second number:")
second_num = gets.chomp.to_i 

puts add(first_num, second_num) 
puts subtract(first_num, second_num)
puts multiply(first_num, second_num)
puts divide(first_num, second_num)
puts modulo(first_num, second_num)
puts power(first_num, second_num)


