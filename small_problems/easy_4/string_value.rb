=begin 
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

Input: A string with alphabetic characters
Output: An integer that represents the value of all of the character from the string from the ASCII table

STEPS:
- change string into individual character in an array (arr)
- iterate through arr
  -- use the .ord method per string and push the integer into the ans_arr
- sum ans_arr
=end

def ascii_value(string)
arr = string.chars
ans_arr = []

arr.each do |element|
 ans_arr << element.ord
end
ans_arr.sum

end 

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0