=begin 

Problem:
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

Input: String
Ouput: String 

Rules:
  Explicit:
    - asks for bill amount
        - asks for tip rate 
    - compute and display tip and total amount of check
  Implicit:
    none 

Data Structure:
  string 

Algorithm:
  - helper prompt message method 
    - ask user for the total bill amount 
        -- convert to integer 
    - ask user how much tip percentage (write it just integers, no need to add % ) 
        -- convert to float
        -- divide tip percent that the user input by 100, which will give us the decimal amount 
  - calculate tip rate by multiplying total amount by decimal from the tip percent above. 
  - sum of tip rate and bill amount to output the total bill 
  - use string interpolation to ouput "The tip is ___" and "The total is ___"


Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end 

def message(prompt)
  "#{prompt}"
end 

p message("What is the bill amount?")
bill_amount = gets.chomp.to_i

p message("What is the tip percentage (10 for 10%, 5 for 5%, etc:")
tip_amount = gets.chomp.to_f

tip = tip_amount / 100 

tip_rate = bill_amount * tip 

final_bill = tip_rate + bill_amount 

puts "The tip is $ #{tip_rate}"
puts "The total is $ #{final_bill}"

