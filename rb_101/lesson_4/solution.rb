
def sum_even_number_row(row_number)

end

def create_row(start_integer, row_length)
 row = []
 current_integer = start_integer
 loop do 
  row << current_integer
  current_integer += 2
  break if row.length == row_length
end
 row
end 


# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers integers in row: 10
# row number: 4 --> sume of integers in row: 68

# p sum_even_number_row(1) == 2 
# p sum_even_number_row(2) == 10 
# p sum_even_number_row(4) == 68


# start: 2, length: 1 --> [2]
# start: 4, lenght: 2 --> [4, 6]
# start: 8, lenght: 3 --> [8, 10, 12]

p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]


# Algorithm 
# 1. Create an empty 'row' array to contain the integers
# 2. Add the starting integer
# 3. Increment the starting integer by 2 to get the next integer in the sequence
# 4. Repeat steps 2 & 3 until the arry has reached the correct length
# 5. Return the 'row' array


# Start the loop 
#  - Add the start integer to the row 
#  - Incrememnt the start integer by 2
#  - Break out of loop if lenght of row equals row_length 