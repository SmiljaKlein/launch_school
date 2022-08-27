=begin 
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).


Input: String
Output: String

Rules:
  Explicit
    - all the words are lowercased and have non-alphabetic characters
      - replace the non-alphabetic characters by spaces
          - if there are multiple non-alphabetic characters, put only one space in the result 
  Implicit:
  
Algorithm:
  - change the string into an array of characters
    - iterate through the array and transform the array 
      - if a character is an alphabetic character keep the character
      - if its a non alphabetic character, replace it with space 
          - take the space and have it only occur once 


EXAMPLES:
cleanup("---what's my +*& line?") == ' what s my line '

=end 

def cleanup(string)
 arr = string.chars
 var = arr.map do |char| #[ '-' '-', 'w'...]
   if ("a".."z").include?(char)
     char
   else 
    char.sub(char, ' ')
   end

  end
  p var.join('').squeeze # "   what s my     line "
end 

puts cleanup("---what's my +*& line?") == ' what s my line '
