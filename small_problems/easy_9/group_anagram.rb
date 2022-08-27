=begin 

given this array...
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Input: An array of string elements 
Output: An array that contains the string elements that are anagrams

Rules:
- Anagrams are words that have the same exact letters in them but in a different order
- argument is an array with multiple string elements 

Steps:
  -method definition name is is_anagram?
  - create an 'anagram' array to contain the string elements from the input that are anagrams
    - return 'anagram' array 
  - iterate through the array 
    - create 'idx' 
      - use the current element to see if it includes the same characters 
  
=end 


def is_anagram?(arr)
  idx = 0 
  anagram = [] 
  arr.each do |el|
    idx += 1
    arr[0].include?(el)
    anagram  << el 
    
  end 
[anagram] 
end 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p is_anagram?(words)