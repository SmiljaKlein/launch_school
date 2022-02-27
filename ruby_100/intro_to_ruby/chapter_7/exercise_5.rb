# Question: What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

# Solution: Use if/else statement 

cats = {Tyrion: "protector", Cerci: "meower", Hodor: "cuddler"}
if cats.value?("meower")
  puts "Yes, that is right."
else 
  puts "No, that is not right."
end 

