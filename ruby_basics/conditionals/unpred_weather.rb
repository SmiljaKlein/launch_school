# Part 1  
  # In the code below, sun is randomly assigned as 'visible' or 'hidden'
  # Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

sun = ['visible', 'hidden'].sample
# if sun == 'visible'
#   puts "The sun is so bright!"
# end 

# Part 2
  # Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.
  puts "The clouds are blocking the sun!" unless sun == 'visible'

# Part 3
  # Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible
  puts 'The sun is so bright!' if sun == 'visible'
  puts 'The clouds are blocking the sun!' unless sun == 'visible'


  