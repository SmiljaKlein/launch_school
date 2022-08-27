=begin 

Problem:
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

Input: result of the multiply method definition
Output: Square of result 

Examples:
square(5) == 25
square(-8) == 64

=end

def multiply(num1, num2)
  num1 * num2
end 

def square(result)
  multiply(result, result)
end

p multiply(4, 4)