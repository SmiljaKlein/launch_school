=begin 
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Input: integer
Output: integer 

Rules:
  Explicit:
    - multiples of 3 and 5 lie after 1 and the other number
      - add up all of the multiples
    - ex. 20 
      - includes 20 because 5 is a factor of 20 

  Implicit:
    multisum(3) == 3
      - 3 (1 is not included)
    multisum(5) == 8
      - 3 and 5
    multisum(10) == 33
      - 3, 5, 6, 9, 10
    multisum(1000) == 234168
      - has to be able to do any number

Data struct