# Write a program that asks the user for their age in years, and then converts that age to months.

puts "What is your age in years?"
age = gets.chomp.to_i

months = age * 12

puts "Your #{age} in months is #{months}"