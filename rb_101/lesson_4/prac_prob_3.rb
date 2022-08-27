# remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

hsh = ages.select do |key, value|
   value < 100 
end 

# LS Solution:
ages.keep_if { |_, age| age < 100 }