# Catch the Number

loop do 
  number = rand(100)
  puts number
  
  if (0..10).include?(number)
    break
  end 
end