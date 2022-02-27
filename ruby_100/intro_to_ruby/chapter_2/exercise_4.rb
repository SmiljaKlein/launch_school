# Question Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

# name.rb

puts "What is your first name?"
first_name = gets.chomp
puts "Thanks, What is your last name?"
last_name = gets.chomp
puts "You're name is " + first_name + " " + last_name

# Solution using string interpolation

puts "What is your first name?"
first_name = gets.chomp
puts "Thank you, What is your last name?" 
last_name = gets.chomp
puts "You're name is #{first_name} #{last_name}"

