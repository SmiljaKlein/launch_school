=begin

Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

Input: string
Output: String

Rules:
  Explicit:
    new string and the first and last letters of every word are swapped
    every word contains one letter
  Implicit:
  swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
    - case sensitive 
  swap('Abcde') == 'ebcdA'
  swap('a') == 'a'

ALGORITHM:
  - change the string into an array of word elements 
        -'Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
          - iterate through the elements
            - swap the first character of the word with the last characeter
  - Change the array back to a string 
=end 

def swap(string)
  arr = string.split
  var = arr.map do |word|
     word[0], word[-1] = word[-1], word[0] 
     word
  end
   p var.join(' ')
end 

puts swap('Oh what a wonderful day it is')  == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde')  == 'ebcdA'
puts swap('a') == 'a'