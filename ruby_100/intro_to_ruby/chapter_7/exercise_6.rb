# Question: Given the following code.... What is the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"} # Solution:  x: is a symbol
my_hash2 = {x => "some value"} # Solution:  x is the local variable from line 1

puts my_hash
puts my_hash2