=begin 

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Input: string 
Output: a string that either has one character which represents the middle character if the input string is odd,
  - 2 characters if the input string is even


Rules:
Spaces are included 
center_of('I love ruby') == 'e'
  string size is 11 divided by 2 = 5.5 
  - returned it rounded up 

center_of('Launch School') == ' '
  str size is 13 /2 = 6.5 so 7th char
center_of('Launch') == 'un'
  str size is 6 and so returns the 3, 4th characters 
center_of('Launchschool') == 'hs'
    str size is 12, so returns the 6th and 7th 
center_of('x') == 'x'
    single string character returns single string 

Steps:
  - split the string into an 'char_arr' of individual character elemtents 
    - iterate through 'char_arr'
      - if the size of the array is even, then seperate the array evenly into arr1 and arr2 
          -- return the last element of arr1 and first elemnt of arr2
      - if the size of the array is odd, seperate the array into arr1 
        -- arr1 containing half the original arry + 1
        -- arr2 containing the second half of the array 
          -- return the last element of arr1 
=end

def center_of(str)
  def center_of(str)
    char_arr = str.chars
    arr1 = [] 
    arr2 = [] 
  
    char_arr.each do |el|
      if arr1.size < char_arr.size/2 +1
        arr1 << el
      else 
        arr2 << el 
      end 
  
    end 
  
    if char_arr.size.odd?
      arr1[-1]
    else
      arr1[-2,2].join
    end
  
  end 
  


center_of('I love ruby') #== 'e'
# center_of('Launch School') #== ' '
# center_of('Launch') #== 'un'
# center_of('Launchschool') #== 'hs'
# center_of('x') #== 'x'

=begin 
shorter version
def center_of(str)

letter = str.size/2
sec_letter = str.size/2 -1

if str.size.odd?
  return str[letter]
else
  return str[sec_letter, 2]
end 
end 
=end 