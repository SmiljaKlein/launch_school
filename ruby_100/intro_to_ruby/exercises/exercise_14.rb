# Question: Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderlan', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

# Solution

something = a.map { |x| x.split }
p something.flatten