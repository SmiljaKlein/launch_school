# Question: Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

# Solution_1
movies = {  :hobbit => 2012,
            :the_shape_of_water => 2017,
            :pans_labyrinth => 2006 }

puts movies[:hobbit]
puts movies[:the_shape_of_water]
puts movies[:pans_labyrinth]

# Solution_2
movies = { hobbit: 2012,
           the_shape_of_water: 2017,
           pans_labyrinth: 2006 }
puts movies[:hobbit]
puts movies[:the_shape_of_water]
puts movies[:pans_labyrinth]

