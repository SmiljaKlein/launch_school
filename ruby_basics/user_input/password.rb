# Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

# PASSWORD = 'SecreT'

# loop do 
#   puts "Please enter your password: "
#   pass = gets.chomp
#   if pass == PASSWORD
#     puts "Welcome!"
#     break 
#   else 
#     puts "Incorrect password, please try again: "
#   end 
  
# end 

# User Name and Password

# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect


PASSWORD = 'SecreT'
USER_NAME = 'admin'

loop do 
  puts "Please enter your username: "
  name = gets.chomp
  puts "Please enter your password: "
  pass = gets.chomp
  if pass == PASSWORD && name == USER_NAME 
    puts "Welcome!"
    break 
  else 
    puts "Authorization failed, please try again: "
  end 
end 
