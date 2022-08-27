=begin

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number

Input: an array of integers
Output: Starting at the integer at idx0, the sum of that, then the sum of the integer at idx0 and idx2, then idx0, idx1, idx2, etc. until all of the integers are accounted for 

Rules:
  Subsequent means :
      [3, 5, 2] will be the sum (3)which is idx0, (3+5) which is idx0 and idx1, (3 + 5 + 7) which is idx0, idx1, idx2. 
    

=end
def sum_of_sums(arr)
 


end


p sum_of_sums([3, 5, 2])  == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35