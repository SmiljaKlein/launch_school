=begin 

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

Input: Array
Output: Array 

Rules:
  Explicit
    - each element has the running total from original array
      - 1st element stays the same, second element is the sume of the first two, third element is the sum of the three, etc.
  Implicit:
    - If it is one element, returns that element
    - If it's an empty array, returns an empty array

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Data Structure:
  - Array
Algorithm:
  Iterate through the array
    - place the first element into an answer array 
    - sum up the first two elements and place into the answer array
    - if the array has one element, return that one element 
  - if the array is empty, return an empty array 

=end 

def running_total(integer)
sum = 0 
integer.map do |element|
  if element.size == 0 
    return []
  end 
sum += element 
end 
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []