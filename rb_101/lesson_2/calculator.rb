# Ask for two numbers
# Ask for the type of operation to perform: add, subtract, multiply, or divide
# displays the result

puts "Welcome to my calculator."
puts "Please enter a number:"
number = Kernel.gets().chomp().to_i
puts "Thank you, please enter another number:"
second_number = Kernel.gets().chomp().to_i
puts "Thank you, would you like to add, subtract, multiply, or divide #{number} and #{second_number}?"
operation = Kernel.gets().chomp().downcase

if operation == "add"
  puts "The answer is #{number + second_number}"
elsif operation == "subtract"
  puts "The answer is #{number - second_number}"
elsif operation == "multiply"
  puts "The answer is #{number * second_number}"
elsif operation == "divide"
  puts "The answer is #{number.to_f / second_number.to_f}"
else 
  puts "That is an incorrect input, please try again."
end

