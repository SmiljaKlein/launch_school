=begin 
Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

Input: A string containing the person's first and last name 

Output: A string with the name swapped 

Rules:
  - swap the name into a new string
  - add a comma in the return value after the last_name 

Algorithm:
  - split the input string into individual words in an an array 
  - transform 'arr' so that the names are swapped, and a comma seperates the names

=end

def swap_name(str)
arr = str.split.reverse.join(', ')

end 
p swap_name('Joe Roberts') == 'Roberts, Joe'