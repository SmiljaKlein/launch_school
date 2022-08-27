=begin 
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Input: 
  Two arrays: both arrays containing integers
Output:
  One array, which contains the product of the numbers from the input arrays that have the same index

Rules:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
  3 and 9 are idx0 thus output 27 
  5 and 50 are idx1 thus output 50
  7 and 11 are at idx2 thus output 77



=end 

def multiply_list(arr1, arr2)
index = 0
answer_arr = []
 arr1.each do |element|
 answer_arr << element * arr2[index]
 index += 1
 end 
 answer_arr
end 

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]