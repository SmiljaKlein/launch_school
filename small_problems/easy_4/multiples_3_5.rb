=begin 

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Input: An integer
Output: An integer that represents the sum of the multiples of 3 and 5 up to the number that was passed in as an argument.

Rules:
  - start from 3 up to the number 
  

multisum(3) == 3
3
multisum(5) == 8
3 + 5 
multisum(10) == 33
3 + 5 + 6 + 9 + 10 
-- number that is passed in is included 
multisum(1000) == 234168
- goes all the way up to 1000

STEPS:
  push in starting from 1 up to the integer into an array called numbers
  iterate through numbers and if the intger is evenly divisible by 3 or 5 push that integer in the multiples array 
  sum the multiples array
=end 

def multisum(integer)
  numbers = []
  1.upto(integer) { |num| numbers << num }
   
  multiples = numbers.select do |element|
    element % 3 == 0 || element % 5 == 0 
  end 
  multiples.sum 
end 

p multisum(3)  == 3
p multisum(5)  == 8
p multisum(10) == 33
p multisum(1000) == 234168
