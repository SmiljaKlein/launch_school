#Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

=begin
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
=end


answers = []

puts "Enter the 1st number:"
answers << gets.chomp.to_i

puts "Enter the 2nd number:"
answers << gets.chomp.to_i

puts "Enter the 3rd number:"
answers << gets.chomp.to_i

puts "Enter the 4th number:"
answers << gets.chomp.to_i

puts "Enter the 5th number:"
answers << gets.chomp.to_i

puts "Enter the last number:"
last_answer = gets.chomp.to_i

if answers.include?(last_answer)
  puts "The number #{last_answer} appears in #{anwers}"
else
  puts "THe number #{last_answer} does not appear in #{answers}"

end


