# Loop on Command

loop do 
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Please answer "yes".'
end 