=begin 

Problem:
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
Note: 1 square meter == 10.7639 square feet
Do not worry about validating the input at this time.

Input: string
Output: string

Rules:
  Explicit:
    1 sq meter == 10.7639 sq ft
    user inputs in meters
  Implicit:
    area = length * width 

Algorithm:
  - Ask user for the length of the room in meters
   - Ask user for the width of the room in meters
      -- convert the user string into an integer
  - create a constant for Sq. meters to sq. feet (because it is not going to change)
    - multiply the length from user input with the width from user input to get sq. meters and convert sq. meters to sq. feet
        - use string interpolation to output the room in sq. meters and sq. feet to the console.


=end


def message(prompt)
   "#{prompt}"
end 

puts message("Please enter the length of the room in meters: ")
length = gets.chomp.to_i

puts message("Please enter the width of the room in meters: ")
width = gets.chomp.to_i

SQ_FEET = 10.7639

sq_meter = length * width
total = SQ_FEET * sq_meter

puts "The area of the room is #{sq_meter} square meters and (#{total} square feet)."

# Example Run
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

