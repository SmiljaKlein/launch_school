# Empty the Array

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# count = 0

# loop do 
#   puts names[count]
#   count += 1
#   break if count == names.size 
# end 

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end

# Our solution prints the names from first (Sally) to last (Henry). Can you change this to print the names from last to first?

count = 3

loop do 
  puts names[count]

  break if count <= 0
  count -= 1
end 