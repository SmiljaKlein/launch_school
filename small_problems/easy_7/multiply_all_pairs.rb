=begin 

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

Input: Two array containing integers. The first array represents the numbers that will be multiplied by each number in the second array
Output: An array of all the numbers multiplied from both the first and second array

Rules:
The numbers are sorted 

You may assume that neither argument is an empty Array.
=end

def multiply_all_pairs(arr1, arr2)
two = arr1[0]
four = arr1[1]
answer = []

arr2.each do |el|
  answer << el * two
  answer << el * four
end 
p answer.sort 

    
end 

multiply_all_pairs([2, 4], [4, 3, 1, 2]) 
# == [2, 4, 4, 6, 8, 8, 12, 16]
