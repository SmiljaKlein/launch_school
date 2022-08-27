# 1. In this hash of people and their age, see if "Spot" is present:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")

# What are two other hash methods that would work just as well for this solution?
  # LS answer: ages.key?("Spot"), Hash#include? and Hash#member?

# 2. Convert the string in the following ways (code will be executed on original munsters_description above):
munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!    # --> "tHE mUNSTERS ARE CREEPY IN A GOOD WAY." 
munsters_description.capitalize! # --> "The munsters are creepy in a good way."
munsters_description.downcase! # --> "the munsters are creepy in a good way."
munsters_description.upcase! # --> "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# 3. We have most of the Munster family in our age hash: add ages for Marilyn and Spot to the existing hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additiona_ages)

# 4. Does "Dino" appear in the string?
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino") 
# LS solution: 
advice.match?("Dino")

# 5. Show an easier way to write this array 
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# 6. How can we add the fmaily pet "Dino" to our array?
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones << "Dino" 

# 7. How can we add multiple items to our array? (Dino and Hoppy)
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones.push("Dino").push("Hoppy")
flinstones.concat(%w(Dino Hoppy))

# 8. Shorten the following sentence: 
# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(39, 33)
# LS solution: 
advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
advice # => "house training your pet dinosaur."

# 9. Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
statement.count('t')

# 10. Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"
title.center(40)
