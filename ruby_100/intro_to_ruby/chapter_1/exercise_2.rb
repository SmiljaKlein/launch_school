# Question: Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place.

# Solution
thousands = 7895 / 1000
hundreds = 7895 % 1000 / 100
tens = 7895 % 100 / 10
ones = 7895 % 10



puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"












