# The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.


def time_of_day(boolean)
  if boolean 
    return "It's daytime!"
  else
    return "It's nighttime!"
  end 
end 

daylight = [true, false].sample
puts time_of_day(daylight)