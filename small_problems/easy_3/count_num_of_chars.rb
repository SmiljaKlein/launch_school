=begin 

Problem:
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

Input: String
Output: String 

Rules:
  Explicit:
    count the characters of the word the user input 
    spaces are not counted
Data structure:
  Array 

Algorithm:
  - ask user for a word or multiple words
    - push string into string
        - push string into array 
            - count the characters in each string object in the array 
        - output the counted characters and return the array back into a string 

=end 

def prompt(message)
  puts "#{message}"
end 
string = ''
array = []

prompt("==> Please write a word or multiple words:")
string << word = gets.chomp 
array << string
array.each do |element|
  p string.count(element) 
end 