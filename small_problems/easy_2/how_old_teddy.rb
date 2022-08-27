=begin 

Problem:
Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Input: number
Output: String interpolation

Rules:
  Explicit:
    - age is random between 20 and 200
  Implicit:
    none 

Algorithm:
  - generate random number and plug it into a string interpolation


Expected output:
Teddy is 69 years old!
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"