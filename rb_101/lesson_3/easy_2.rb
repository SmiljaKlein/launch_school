# Question 1: In this hash of people and their age, see if "Spot" is present
# Bonus: What are two other hash methods that would work just as well for this solution? 
    # `Hash.include?` and `hash#member?`

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.include?("Spot")
# p ages.key?("Spot")

# Question 2: Convert the string in the following ways:

=begin munsters_description = "The Munsters are creepy in a good way"
p munsters_description.swapcase!
p munsters_description.capitalize!
p munsters_description.downcase!
p munsters_description.upcase!
=end

# Question 3: add ages for Marilyn and Spot to the existing hash 

=begin 
ages = { "Herman" => 32, "Lily" => 30, "Granpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marylin" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)
=end

# Question 4: See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet dinosaur"
# p advice.include?("Dino")

# Question 5: Show an easier way to write this array:

# flinstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# p flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6: How can we add family pet "Dino" to our usual array:

#flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#flinstones << "Dino"
#p flinstones 

# Question 7: How can we add multiple items to our array?(Dino and Hoppy)

# flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flinstones.push("dino").push("Hoppy")
# p flinstones 

# Question 8: Use method `String#slice!` to make the return value "Few things in life are as important as " But leave `advice` variable as "house training your pet"

# advice = "Few things in life are as important as house training your pet dinosaur"
# new_advice = advice.slice!(0..38)
# p new_advice
# p advice

# Question 9: Write a one-liner to count the number of lower-case 't' characters in the following string.

# statement = "The Flinstones Rock!"
# p statement.count('t')

# Question 10: Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

# title = "Flinstones Family Members"
# p title.center(40)