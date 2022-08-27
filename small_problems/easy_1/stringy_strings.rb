=begin 

Problem:
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Input:
    Integer
    ex. 6 
Output:
    String
    ex. '101010'

Rules:
  Explicit:
    return a string of 1's and 0's of the integer amount
    always start with 1 
  Implicit:
    none 

Data Structure:
  string = "10"
  ''
  '1'
  '10101010'
  '101'

Algorithm:
   - run a piece of code a given number of times 
        - push '1' into the empty_string 
        - push '0' into the empty_string following the 1 
            - if conditional:
                - if index at -1 is equal to 0 push in '1' to empty_string
                - elsif index at -1 is eqaul to 1 push in `0` to empty_string


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end


def stringy(numbers)
  answer_string = ""
  numbers.times do |_|
    if answer_string[-1] == nil 
      answer_string << '1'
    elsif answer_string[-1] == 0 
      answer_string << '1'
    elsif answer_string[-1] == 1
      answer_string << '0'
    end 
  end 
 p answer_string 
end

 puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'