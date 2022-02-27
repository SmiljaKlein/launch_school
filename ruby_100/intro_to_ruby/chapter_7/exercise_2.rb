# Question: Look at Ruby's merge method. Notice that it has two versions. 1. What is the difference between merge and merge!? 2. Write a program that uses both and illustrate the differences

# Answer: merge! is destructive, and merge is not. 
# Solution

brothers = {First: "Nikola", Second: "Bozidar", Third: "Stevan", Fourth: "Stanko", Fifth: "Petar"}
sisters = {Oldest: "Ljubica", Middle: "Dragana", Youngest: "Smilja"}

puts brothers.merge(sisters)

puts brothers.merge!(sisters)

# Book Solution
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight  
