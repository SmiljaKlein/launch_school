# Part 1
  #In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

  # Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

  stoplight = ['green', 'yellow', 'red'].sample

  # case stoplight 
  # when 'green' 
  #   puts 'Go!'
  # when 'yellow' 
  #   puts 'Slow down!'
  # when 'red' 
  #   puts 'Stop!'
  # end 

# Part 2
  # convert to if statement 

  if stoplight == 'green'
    puts 'Go!'
  elsif stoplight == 'yellow'
    puts 'Slow down!'
  else 
    puts 'Stop!'
  end 

# Part 3
  # Reformat the following case statement so that it only takes up 5 lines.
  
  case stoplight
  when 'green'  then puts 'Go!'
  when 'yellow' then puts 'Slow down!'
  else               puts 'Stop!'
  end