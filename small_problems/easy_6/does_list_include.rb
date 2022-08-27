=begin 
Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.



include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

=end 

def include?(array, integer)
  if array.empty?
    return false
  end 
  array.each do |number|
    if array.count(integer) == number 
     return true
    elsif number == nil && integer == nil
      return true
    else
      return false 
    end 
end 
end
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false