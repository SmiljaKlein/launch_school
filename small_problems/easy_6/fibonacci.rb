=begin 

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Input: integer
Output: integer

Rules:
  Explicit:
    - Fibonacci 
      - the first 2 numbers are 1 by definition
        - each subsequent number is the sume of the two previous numbers
    - Calculate and return the index of the first Fibonacci number that has the number of digits specified as arguments
  Implicit Rules:
    - find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
        - The argument 2 is the index, and in this case, that is integer 2. To get to the sum which is 7, we are going to do index + 1, thus adding the next integer gives us the sum.
    - find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
          - Index 3 is the integer 3 but we have add integer 5 to the sum to get 12 
    - find_fibonacci_index_by_length(10) == 45  # 1 1 2 3 5 8 13 21 34 55 89 144 
    - find_fibonacci_index_by_length(100) == 476
    - find_fibonacci_index_by_length(1000) == 4782
    - find_fibonacci_index_by_length(10000) == 47847

=end
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end


puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847