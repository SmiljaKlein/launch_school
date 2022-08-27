=begin 
Problem:
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Input:
  array
Output:
  integer 

Rules:
  Explicit: 
    - array is never empty
    - integers are always positive
    - result is an integer
    - average of all numbers inside array
  
  Implicit:
    none

Data structure:
Algorithm:
    - add all integers inside the array 
    - count how many elements are in the array and divide that by the sum of the integers inside the array 
=end 

def average(array)
  array.sum / array.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40