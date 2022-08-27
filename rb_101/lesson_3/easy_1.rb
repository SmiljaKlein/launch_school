# Question 1: What do you expect the code below to print out?

# Question 3: Replace the word "important" with "urgent" in this string:

# advice = "Few things in life are as important as house training your pet dinosaur"
# advice.gsub!('important', 'urgent')
# p advice

# Question 4: The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. 
# What do the following method calls do (assume we reset `numbers` to the original array between method calls)?

# numbers = [1, 2, 3, 4, 5]
# numbers
# numbers.delete_at(1) # This method will delete index 1 of the array, which is integer 2. Also this is mutative method
# p numbers

# numbers = [1, 2, 3, 4, 5]
# p numbers
# numbers.delete(1) # This method deletes the integer 1. Also this is a mutative method
# p numbers


# Question 5: Programmitcally determine if 42 lies between 10 and 100. Use Ruby's range object in your solution
  
# range = (10..100)
# p range.cover?(42)

# Question 6: Show two different ways to put the expected "Four score and" in front of it.

# famous_words = "seven years ago..."
# p famous_words.object_id
# famous_words.prepend("Four score and ")
# p famous_words
# p famous_words.object_id

# puts "Four score and" + ' ' + famous_words
# p famous_words.object_id

# begin_words = "Four score and "
# sentence = begin_words + famous_words 
# p sentence

# Question 7: Make this into an un-nested array

# flinstones = ["Fred", "Wilma"]
# flinstones << ["Barney", "Betty"]
# flinstones << ["BamBam", "Pebbles"]

# p flinstones.flatten!

# Question 8: Given the hash, turn this into an array containing only two elements: Barney's name and Barney's number.
flinstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flinstones.object_id
p flinstones.assoc("Barney")






