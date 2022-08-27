# 1. In the code below, an array containing different types of pets is assigned to pets.

# pets = ['cat', 'dog', 'fish', 'lizard']

# # Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

# my_pet = pets[2]

# puts "I have a pet #{my_pet}"

# 2. More than one 
  # In the code below, an array containing different types of pets is assigned to pets
  
pets = ['cat', 'dog', 'fish', 'lizard']
  # Write some code that selects 'fish' and 'lizard' from the pets array - select the two items at the same time. Assign the return value to a variable named my_pets, then print the contents of my_pets as a single string, e.g
my_pets = pets[2, 2]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

# LS answer: used a range 
  my_pets = pets[2..3]
  