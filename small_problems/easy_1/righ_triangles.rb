=begin 
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

Problem: Given an integer (n) as an argument, return a right triangle whose sides have n stars. 

Input: Integer
Output: String in right triangle with '*' symbol 

Rules: 
  - input integer is positive
  - each '*' is vertical n number to times 
  - empty spaces otherwise 
    - increments by 1 '*' each row 
  - output has n + 1 total spaces 
=end 

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)
