# The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)

['Dave', 7, 'Miranda', 3, 'Jason', 11]

[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# part 2 

#Flatten and print this array. That is, the printed result should not have any subarrays, but should have all of the original strings and numbers from the original array:
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
flat_favorites = favorites.flatten 