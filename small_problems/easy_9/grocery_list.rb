=begin 
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Input: Nested array, with each inner array having two elements, the first a string of a type of fruit and the seocnd an integer that represents how many times to output the string fruit 
Output: An array containing all of the fruits each with the amount of times from the integer 

Rules:
  - nested array 
  - return value is an array containing strings 

Algorithm:
  - create a 'fruits' array to contain all the fruit names 
    - return 'fruits' array 
  - iterate through the outer array 
    - push into 'fruits' array the string 

=end 

def buy_fruit(nest_arr)
  fruits = [] 
  nest_arr.each do |arr|
     arr[1].times do |el|
    fruits << arr[0]
    end 
  end

  fruits 
end 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]