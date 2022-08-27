=begin 

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

input: string
output: hash 

Rules:
  Explicit
    - Words consist of any string of characters that do not include a space
  Implicit:
      - non-alphabetic characters count
      - empty string returns an empty hash 
      - not case sensitive

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Algorithm:
      - initialize a hash 
      - turn the string into an array of words
        - iterate through the array and push the size of the words into a hash as the keys 


=end 

def word_sizes(string)
  hsh = {}

  arr = string.split
  arr.each do |word|
    if hsh[word.size] == nil 
      hsh[word.size] = 1
    else
      hsh[word.size] = hsh[word.size] + 1
    end 
  end 
  hsh

end 

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}