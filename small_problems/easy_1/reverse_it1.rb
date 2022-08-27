=begin 

Problem: 
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Input: String
Ouput: String

Rules:
  Explicit:
    new string is returned in reverse
  Implicit: 

    puts reverse_sentence('Hello World') == 'World Hello'
      - Characters are not reversed, just the words
    puts reverse_sentence('Reverse these words') == 'words these Reverse'
      - not case sensitivie
    puts reverse_sentence('') == ''
      - empty string returns an empty string
    puts reverse_sentence('    ') == '' # Any number of spaces results in ''
      - string with just spaces inside returns an empty string 

Data Structure:
  array

Algorithm:
    - split the string into two different elements in an array
      -reverse the words in the array # ["World", "Hello"]
        - change the array into a string 

    
=end

def reverse_sentence(words)
  words.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''