# Below we have given you an array and number. Write a program that checks to see if the number appears in the array.


# My solution

arr = [1, 3, 5, 7, 9, 11]
number = 3
p arr.include?(3)

# Book Solution 

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or ...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end 


