=begin 

Problem:
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

Input: integer and boolean
Output: integer

Rules:
  Explicit:
    - the boolean is true half the return value will be half the salary

Algorithm:
  - conditional statement 
      - if the second argument is true boolean, they half the salary
      - if the second argument is a false boolean, then return 0 

=end

def calculate_bonus(integer, boolean)
  if boolean == true
    integer / 2
  else boolean == false
     0 / integer 
  end 
end 


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000