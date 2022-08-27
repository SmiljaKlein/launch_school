# 1.  What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers 

# This code will output each element from the array on seperate lines 

# 3. Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# 4 The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
  # This will permanently delete the element at index 1 from the numbers array 
numbers.delete(1)
  # Permanently deletes the number 1 from the array 

# 5. Programmatically determine if 42 lies between 10 and 100.

range = (10..100).to_a
range.include?(42)
  # LS answer: (10..100).cover?(42)

# 6. show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."
'Four score and ' << famous_words
'Four score and ' + famous_words

  # LS answer: 
  "Four score and " + famous_words
  famous_words.prepend("Four score and ")

# 7. If we build an array like this: 
  flintstones = ["Fred", "Wilma"]
  flintstones << ["Barney", "Betty"]
  flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
  ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array:
  flinstones.flatten!

# 8. Given the hash below: 
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones.assoc("Barney")



  