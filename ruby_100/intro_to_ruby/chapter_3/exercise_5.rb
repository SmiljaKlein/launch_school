# Question: Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

# Solution 1: To execute code, removed return.

def scream(words)
  words = words + "!!!!"
  puts words
end

p scream("Yippeee")

# Solution 2: puts always return nil. Without an explicit return in our method the return value will be the evaluated result of the last line executed. 