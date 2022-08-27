=begin 
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Input: Two integer arguments:
    - The first represents how many multiples of the second argument to output 
Output: An array containing the multiples of the second argument

Rules:
  - num1 argument is how many times 
    - we will output the multiples of num2 argument
  -sequence(0, 1000000) == []
    - if num1 0 return empty array 
  -sequence(3, 0) == [0, 0, 0]
    - if num2 is 0 return 0 in an array num1 times. 

Algortihm:
  - 'multiples' arr to contain all of the multiples 
    - return 'multiples'
  - 'counted' arr
  - add num2 to num2 until num1 times is reached 



=end

def sequence(num1, num2)
  multiples = []
  counted = num2

  num1.times do 
    multiples << counted
    counted += num2

  end 
  multiples 

end 

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []