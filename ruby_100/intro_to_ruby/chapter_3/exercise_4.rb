# Question: What will the following code print to the screen?


def scream(words)
  words = words + "!!!!"
  return # When an explicit return like this is executed, Ruby exits from the method. Code will not be executed.
  puts words
end

scream("Yippeee")

# Solution: Will not print anything on the screen. 