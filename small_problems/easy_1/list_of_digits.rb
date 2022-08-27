=begin 
  
Problem:
  Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

  Input:
    integer
  Output:
    array of integers

Rules:
  Explicit:
    integer is returned into a list of digits
  Implicit:
    Single digit is returned

Data structure:
  An array of integers

Algorithm:
  - initialize answer_array to the return value of:
    - the integer changed into a string
    - the string changed into an array
  - initialize a final_answer
    - iterate through the answer_array and transform each element in the array from
  a string to an integer. 




Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=end

def digit_list(integer)

  answer_array = integer.to_s.chars
  final_answer = answer_array.map do |element|
    element.to_i
  end 
  p final_answer 
  
end

puts digit_list(12345)