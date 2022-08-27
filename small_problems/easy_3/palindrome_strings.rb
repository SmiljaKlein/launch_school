=begin 

Problem:
  Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

  Input: string
  Ouptut: string 

  Rules:
    Explicit:
      - case matters
      - all characters matter
      - palindrome reads same forward and backward
      - punctuation and spaces matter 
    
      Implicit:
      - numbers included 

Algorithm:
  reverse the string 

=end 

def palindrome?(string)
  string == string.reverse
end 

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
