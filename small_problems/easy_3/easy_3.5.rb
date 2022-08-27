# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end 

puts multiply(5, 5)

def square(num)
  multiply(num, num)
end 
puts square(5)