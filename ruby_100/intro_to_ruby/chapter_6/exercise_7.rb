# Question: Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

# My solution

array = [1, 3, 5, 7 , 9, 11, 13, 15]
array.each_with_index do |x, i| 
  puts "#{i}. #{x}"
end 


# Book Solution

top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}" 
end