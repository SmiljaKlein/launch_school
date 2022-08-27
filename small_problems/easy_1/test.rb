=begin 

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=end

# def stringy(num)
#   new_str = ''
#   num.times do |x|
#     if x.even?
#       new_str << '1'
#     else
#      new_str << '0'
#     end 
#   end 
#   new_str
# end 
    

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


# def xor?(num1, num2)
#   if num1 == true && num2 == true
#     return false
#   elsif
#     num1 == true && num2 == false
#     return true
#   elsif
#     num1 == false && num2 == false
#     return false 
#   elsif num1 == false && num2 == true
#     return true 
#   end 
# end 

# puts xor?(5.even?, 4.even?) == true
# puts xor?(5.odd?, 4.odd?) == true
# puts xor?(5.odd?, 4.even?) == false
# puts xor?(5.even?, 4.odd?) == false



# def real_palindrome?(str2)
#  str2 = str2.downcase.delete('^a-z0-9')
#   is_palindrome?(str2)
# end 

# def is_palindrome?(string)
# string == string.reverse

# end


# # puts real_palindrome?('madam') == true
# # puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

#Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


# def halvsies(array)
#   center = (array.size / 2.0).ceil # the amount of element in the array / 2.0 (which accounts for an odd # of elements) #ceil rounds up to the nearest whole number
#   second = array.slice(2, 3)
#   first = array.slice(0, 2)

#   [first, second]
 
# end 

# p halvsies([1, 2, 3, 4]) 
# p halvsies([1, 5, 2, 4, 3])  
# p halvsies([5]) 
# p halvsies([]) 

=begin 
GO OVER WITH KYLE
The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups.

['Dave', 7, 'Miranda', 3, 'Jason', 11]
# => [['Dave', 7], ['Miranda', 4]. ['Jason', 1]]
=end 
hsh = {}

arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
arr.each_with_index do |element, index|
 if array[element] == index.even?
  