=begin 
Problem:
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.


Input: array
Output: array

Rules
  Explicit:
    - the return array contains elements at 1st, 3rd, and 5th element
  Implicit:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
  - Since arrays are index based and start at 0, index 0 is the first element, index 1 is the second element, etc. 
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
  - This returns an array of strings at index 0 
oddities([123]) == [123]
  - This returns the entire array because it is one whole integer 
oddities([]) == []
  - if the array is empty, it returns an empty array. 

Data Structre: 
  Array 

Algorithm:
   iterate through the array 
    - select the element at even numbered index 

  
=end 

def oddities(array)
  answer_array = [] 
  array.each_with_index do |element, index|
    if index.even? 
      answer_array << element 
    end 
    if array.empty?
      return [] 
    end 
  end 
  answer_array 
  end 



p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
