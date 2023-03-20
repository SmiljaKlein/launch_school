# Write a method that will take a short line of text, and print it within a box.

def print_in_box(message)
  horizontal_line = "+#{'-' * (message.size + 2)}+"
    message 
  vertical_line = "|#{' ' * (message.size + 2)}|"
  
  puts horizontal_line
  puts vertical_line
  puts "| #{message} |"
  puts vertical_line
  puts horizontal_line
end 

print_in_box('To boldly go where no one has gone before.')
