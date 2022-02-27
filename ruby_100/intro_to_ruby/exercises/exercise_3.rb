# Question: Use select method to extract all odd numbers into a new array.

# Solution

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_number = array.select { |number| number.odd? }
puts odd_number 