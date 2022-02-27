# Question: Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

# Solution

x = ""
while x != "STOP" do
  puts "Hello, what is your name?"
  name = gets.chomp
  puts "I will repeat until you tell me to stop"
  x = gets.chomp
end 