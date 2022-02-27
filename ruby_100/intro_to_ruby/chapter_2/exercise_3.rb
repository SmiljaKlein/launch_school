# Question: Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

# name.rb 


puts "What is your name"
name = gets.chomp
puts "Hi " + name

10.times do
  puts name 
end
