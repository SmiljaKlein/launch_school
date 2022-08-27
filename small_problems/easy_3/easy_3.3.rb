# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

def prompt(message)
  puts " ==> #{message}"
end 

prompt("Please write word or multiple words:")
answer = gets.chomp

array = answer.split.join
characters = array.size

prompt("There are #{characters} characters in #{answer}")

