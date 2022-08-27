=begin 
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

=end 


def word_sizes(string)
  hsh = {}
  alt_str = string.delete("^a-zA-Z ")
  arr = alt_str.split
  arr.each do |word|
    if hsh[word.size] == nil 
      hsh[word.size] = 1
    else
      hsh[word.size] = hsh[word.size] + 1
    end 
  end 
  hsh

end 

p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}