=begin 

Problem:
Write a method that counts the number of occurrences of each element in a given array.
The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.



Input:
  array
Output:
    

Rules:
  Explicit:
    The words are case sensitive 
  Implicit:

  

Expected output:
  car => 4
  truck => 3
  SUV => 1
  motorcycle => 2

Data Structure:
  new_answer array   
  how_many hash


Algorithm:  
  initialize a new_answer array that conatins all of the elements from the original array, but only one occurence of each element. 
    - iterate through the new_answer array.
      - count how many of the current element are in the original array.
        - create a new key value pair hash named how_many with the key being the type of vehicle and the value being the count. 
          - iterate through the hash and use string interpolation to print to the console the key value pairs. 
=end


def count_occurrences(array)
  how_many = {}
  new_answer = array.uniq
  new_answer.each do |type|
    how_many[type]= array.count(type)
  end 
  how_many.each do |element, count|
    puts "#{element} => #{count}"
  end
  how_many
end 
    

# def count_occurrences(type)
#   answer_array = []
#   type.each do |element|
#     if element.include?('car')
#       answer_array << element.count('car')
#     end 
#   end
#     p answer_array 
# end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# new_answer = vehicles.uniq
# p new_answer # ["car", "truck", "SUV", "motorcycle"]


count_occurrences(vehicles)

