=begin 

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Input: Two arrays
  First array has integers
  Second array has alphabetic characters

Output: One array that has the elements from the input arrays alternating elements: the first element is from the first array and the seond element is from the second array, and so on. 

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
        - New array with alternating elements from the input array s

Algorithm:
  create combined_array [] to house the elements from both arrays
  push array1 element into the combined_array, then array2 element, etc.
=end



def interleave(array1, array2)
combined_array = []
idx = 0 
array1.each do |el|
  combined_array << el << array2[idx]
  idx += 1
end


# Sol through loop 
# loop do 
#   break if idx == array2.size 
# combined_array << array1[idx]
# combined_array << array2[idx]
# idx += 1
# end 

 p combined_array 

end 



 interleave([1, 2, 3], ['a', 'b', 'c'])  #== [1, 'a', 2, 'b', 3, 'c']
