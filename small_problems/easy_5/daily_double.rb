=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data Structure:
  string = '' 

Algorithm:
  - change the string into an array of characters #[ d d a a ]
    - use the index to keep + 1 to where you currently are 
      - if character at current_index is equal to character in current_index + 1
      - push nothing into the string ''
      if character at current_index 0 is not equal to charater in current_index + 1 
        - push the current_index into the string 
=end

def crunch(string)
  ans_str = ''
  arr = string.chars
  arr.each_with_index do |element, current_index|
    if arr[current_index] == arr[current_index + 1] #['d d a a i i llyy ddoouubbllee']
      ans_str << ''
    else
      ans_str << element
    end 
  end 
ans_str 
end 


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''