=begin 

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Input: Two integer arguments.
  The first argument is an integer that represents the starting number
  The second argument is an integer that represents the ending number

Output: 
  All the numbers printed out that are between the first argument and second argument

Rules:
    - 'Fizz' string replaces any integers that are divisible by 3
    - 'Buzz' string replaces any integers that are divisible by 3
    - 'FizzBuzz' string replaces any integers that are divisible by 3 & 5 

Steps 
  - create 'numbers' array to contain all the numbers from the starting number until the ending number
  - create 'answers' array to contain the return values of either integers or string objects
    - iterate through the array 
      - check to see if the number is divisible by both 3 & 5 
        - if it is push it into 'answers' array  'FizzBuzz'
      - if the number is divisible by only 3 and not 5
        - push 'Fizz' into answer array
      - if the number is divisible by 5 
        - push buzz into answer array 
      - else
        - push the number into the array 

=end

def fizzbuzz(int1, int2)
  numbers = (int1..int2).to_a
  answer = [] 
  
  numbers.each do |num|
    if num % 3 == 0 && num % 5 == 0
     answer << 'FizzBuzz' 
    elsif num % 3 == 0
      answer << 'Fizz'
    elsif num % 5 == 0 
      answer << 'Buzz'
    else
      answer << num
    end
  end
  p answer.join(', ')
end 

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz