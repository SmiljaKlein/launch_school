=begin

Problem: 
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Input: string
Output: string 

Rules:
  Explicit:
    - the reversed string is 5 characters or longer
    - spaces are counted when there is more than one word
  Implicit:
  puts reverse_words('Professional')          # => lanoisseforP
  puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  puts reverse_words('Launch School')         # => hcnuaL loohcS

Data Structure:
  string

Algorithm:
  -split the string into string elements into an array 
    iterate through the array 
      - if the string size is greater than or equal to 5 characters, reverse the characters in the word, push the reversed word into an answer_array.
      - if the word is less than or equal to 5 characters, push the word into the answer_array.
      - change the array back to a string

=end


def reverse_words(string)
  answer = [] 

string.split.each do |element| 
  if element.size >= 5 
      answer << element.reverse 
  else 
    answer << element 
  end 
end
answer.join(' ')
end 

  
puts reverse_words('Professional')  ==  "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School') ==  "hcnuaL loohcS"