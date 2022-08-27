=begin 
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

Input: A string with lowercased and uppercased alphabetic characters and numbers and symbols 

Output: A hash with the keys: lowercase; which represents how many lowercased alphabetic characters there are in the input string, uppercase; which represents how many uppercased alphabetic characters there are in the input string, and neither: which represents numbers, symboles, spaces, anything that is not alphabetic from the input string. 


Rules:
Each character is counted individually including spaces and put into their perspective key-value pairs 
If there are no characters that count for the key, return 0 as the value for the key 

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
  'abdef' is 5 
  'C' is 1
  ' 123' 4
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
    'bdf' is 3
    'ACE' is 3
    ' +' is 2
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
  there are only non-alphabetic characters 3 in total 
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
  empty string returns 0 for all keys 


Data Structure:
hash 
array 


Algorithm:
  create an empty hsh which will contain the keys lowercase, uppercase, neither
  change the input string into individual characters in an array named arr
  lower_case array to contain all of the lowercase characters
    - push from arr the lowercase letters
  upper_case array to contain all the uppercase characters 
    - push from arr the uppercase letters
  iterate through the original string and if it does not include characters count the remainding indexes. 
  




=end 

def letter_case_count(string)
arr = string.chars

upper_letter = [] 
lower_letter = [] 
non_alph = []
upper = ("A".."Z")
lower = ("a".."z")

arr.each do |element|
  if upper.include?(element) 
    upper_letter << element 
  elsif lower.include?(element)
    lower_letter << element 
  else
    non_alph << element
  end 
end 
  count_hsh = {
  lowercase: lower_letter.count,
  uppercase: upper_letter.count,
  neither: non_alph.count
 }
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }