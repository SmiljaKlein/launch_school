=begin 

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Input: A string of characters
Output: An array containing the list of all the substring of the input string, from shortest to longest. 

Algorithm:
  - result arrary:
     - of overlapphing string elements: `['a', 'ab']`,etc
  - start at idx 0 and increment up to the size of the string minus 1 to account for the fact that idx starts at 0 while the size of an array starts with 1 and counts up 
    - pass in a block 
      - do letter as a parameter
        -- push the string at index 0 up to the parameter in the result array 
  - return result array 
=end

def leading_substrings(str)
  sub_str = [] 
  how_many = 1

  str.size.times do |_|
    sub_str << str[0, how_many]
    how_many += 2
  end 
sub_str 
end 

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



=begin 

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring

Steps:
- create a 'sub_str' arr to contain all of the substrings from the first argument
- create a 'end_idx' that represents where we end 
- run the block of code the same number of times as the size of the input string 
  - inside the block 
    - push into 'sub_str' from the starting index to the number of characters which is incremented by 1 each time 
- return the `sub_str` array 

=end 

def leading_substrings(str)
  sub_str = [] 
  how_many = 1

  str.size.times do |_|
    sub_str << str[0, how_many]
    how_many += 1
  end 
sub_str 
end 


p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']