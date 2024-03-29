=begin 
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

Input: An integer that represents a year
Output: A boolean value (true if the year is a leap year)

Rules:
  -- leap years occur in every year evenly divisible by 4 unless the year is also divisble by 100
  --- if the year is evendly divisible by 100, it is NOT a leap year, unell the year is evenly divisible by 400. 

STEPS:
  - if the year divided by 4 is not equal then return false 
  - fourth_year = if the year is divisble by 4 or by 100, then check to see if the year is divisible by 400 and if it is return true
    - if the year is divisible by 4 and not by 100 then return true 
=end 

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0 
    return true
   elsif year % 4 && year % 400 == 0 
    return true 
  else 
    false 
  end
end 


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400)  == true
p leap_year?(240000)  == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true