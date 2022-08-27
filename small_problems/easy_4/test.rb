=begin

Input: A string 
Output: The string with with the first and last letters of every word swapped. 

Rules:
  - case sensitive
  
STEPS:
  change the string into individual words in an array 
  iterate through the array 
    - change the element in the current index of each element into the last index of that element 

=end

def swap(string)
  string[0], string[-1] = string[-1], string[0]
  string
  
end 

p swap('Oh what a wonderful day it is') 
# == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'