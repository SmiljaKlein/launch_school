=begin 

Problem:
Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

Input: string
Output: string

Rules:
  Explicit:
    - two strings are taken as arguments
    - determine which string is longest
    - return value is concatenated string with the shortest first, then longest, then shortes again. 
  Implicit:
Exmaples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
  - if one of the arguments is an empty string, return the string with characters only. 

Data structure:

Algorithm
  if string1 size is shorter than string2, concatenate string2 to string1 and concatenate string1 to string2 
  else if string2 is shorter than string1, concatenate string2 to string1 and concatenate that to string 2
    if the string is empty, return the string with characters

=end 
def short_long_short(string1, string2)
  if string1.size < string2.size
    string1.concat(string2 + string1)
  else string1.size > string2.size
    string2.concat(string1 + string2)
  end 
end 


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
