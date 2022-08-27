=begin 

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

Input: An array of integers
Output: An array with the integers starting at idx 1 being the sum of the previous element 

running_total([2, 5, 13]) == [2, 7, 20]
  idx0 = 2, idx1 = 2+5, idx2 = 1 + 5 + 13 
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  idx0 = 14, idx2 = 14 + 11, idx3 = 14 + 11 + 7 
running_total([3]) == [3]
running_total([]) == []
-empty index returns [] 

=end


def running_total(array)
  array2 = array[0]
  idx = 1

  loop do 
    break if idx == array.size 
    
   array2 << array[idx] + (array[idx] -1)
   idx += 1 
  end 
  p array2 
   

end 

running_total([2, 5, 13]) 
# == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []