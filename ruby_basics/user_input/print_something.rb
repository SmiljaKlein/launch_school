# Part 1

# puts "Do you want to print something? (y/n)"
# user_input = gets.chomp 

# if user_input == 'y'
#   puts 'something'
# end 

# Part 2



loop do 

  puts ' Do you want me to print something? (y/n)'
  answer = gets.chomp.downcase

  if answer == 'n'
    break 
  elsif answer == 'y'
    puts 'something'
    break
  else
    puts "incorrect answer: please try again:"
  end 
end 
  

