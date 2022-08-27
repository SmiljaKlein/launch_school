=begin 
Problem:
  Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

  Input:
    string, integer

  Output:
    string 
  
Data Strucure:
  string 

Algorithm:
  Print to the screen the string the number of times of the given integer.

=end

def repeat(string, integer)
  integer.times do 
    puts string
  end
end 

repeat('Hello', 3)