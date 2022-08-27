# Part 1
# Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

puts ">> How many lines do you want to enter? Enter a number >= 3 (Q to quit) "
number = gets.chomp.to_i
count = 0

  loop do 
    break if count >= number
    if number >= 3
    puts "Launch School is the best"
    elsif number == 'q' || 'Q' 
      break 
    else 
      puts "Incorrect amount of lines; please try again:"
    end 
    count += 1
  end 


# Part 2

# Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.