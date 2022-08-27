# Conditional Loop

process_the_loop = [true, false].sample

  if process_the_loop 
    loop do 
    puts "This loop was processed"
    break
  end 
  else process_the_loop
    puts "The loop wasn't processed"
  end 
