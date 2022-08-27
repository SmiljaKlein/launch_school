=begin 
Problem:

Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

Input: String
Ouput: String

Rules:
  Explicit:
    - if user input is `name!` 
      - the computer yells back at the user in CAPS 
  Implicit:
    none

Data Structure: 
  string
  if conditional 

Algorithm:
    - Ask user what their name is
      - greet user
    - if the user writes the string "name!" then the computer will output: `"HELLO BOB. WHY ARE WE SCREAMING?"`
=end

puts "Hello, What is your name?"
name = gets.chomp

if name[-1] == "!"
  name = name.chop 
  puts "HELLO #{name.upcase}, WHY ARE YOU YELLING AT ME?"
else 
  puts "Hello #{name}."
end 


