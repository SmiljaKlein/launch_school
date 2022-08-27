# Question 1: Write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right.

# 10.times { |number| puts (" " * number) + "The Flinstones Rock!" }

# Question 2: The following statement will be an error:
# puts "the value of 40 + 2 is " +(40 + 2)

=begin 
Why is this and what are two ways to fix it?
The error is TypeError: no implicit conversion of Integer into String because (40 + 2) is an integer and it is being concatenated to a string. 

How to fix?
  1. puts "the value of 40 + 2 is " +(= (40 + 2).to_s  
  2. puts "the value of 40 + 2 is is #{40 + 2}"

=end

 # Question 3: How can we make this work without using begin/end/until? 

=begin
 def factors(number)
  divisor = number
  factors = []
  while divisor > 0 
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end 
=end

# Question 4: She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?
 # The difference is that << is mutative and + is not. 

=begin
def rolling_bugger1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer 
end 

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
end 
=end

# Questiono 5: What is wrong with this code? 
# Method definitions scopes are self contained. Local variable limit with was initialized outside of the method with a value of 15.

# How would you fix it?


=begin limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num 
    first_num = second_num 
    second_num = sum 
  end
  sum 
end 

result = fib(0, 1, limit)
puts "result is #{result}"
=end 

# Question 6: What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end 

p new_answer = mess_with_it(answer)
p answer - 8 
