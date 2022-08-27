=begin 

Build a program that displays when the user will retire and how many years she has to work till retirement.

Input: String
Output: String

Rules:
  Explicit: 
    - display the years it will take to retire 
    - display what year the person will retire 
  Implicit:
    - none 

Data Structure:
Helper method for messages
string interpolation 

Algorithm:
  - helper method for messages
  - ask user what their current age is
      - convert to integer
  - ask user at what age they would like to retire
      - convert to integer 
  - calcuate the year that the user will retire subracting the age they would like to retire by the age they currently are.
      - use the difference and add it to the current year
      - subtract retired year by current year to get the amount of years they have left to work until they retire. 
  - Use string interpolation to output what year 
     Time class to get the current year 


What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end 

def prompt(message)
  "#{message}"
end

puts prompt("What is your age?")
current_age = gets.chomp.to_i

puts prompt("At what age would you like to retire?")
retire_age = gets.chomp.to_i

years_left = retire_age - current_age 

t = Time.new
current_year = t.year 
retire_year = t.year + years_left 

puts "It is currently #{current_year}. You will retire in #{retire_year}. 
You have only #{years_left} years of work to go."