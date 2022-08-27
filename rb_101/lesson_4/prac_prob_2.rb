# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
arr = []

ages.each do |key, value|
  arr << value
end 

p arr.sum 

# LS Solution: 
ages.values.inject(:+)