# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do 
    puts "Please enter a positive or negative number: "
    number = gets.chomp 
    return number.to_i if valid_number?(number)
    puts "Invalid input. Only non-zero integers are allowed"
  end 
end 

first_num = nil
second_num = nil 

loop do 
  first_num = read_number 
  second_num = read_number
  break if first_num * second_num < 0
  puts "One integer must be positive and one must be negative"
  puts "Please start over"
end 


sum = first_num + second_num 
puts "#{first_num} + #{second_num} = #{sum} "