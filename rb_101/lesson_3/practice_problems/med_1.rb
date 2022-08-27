=begin 1. For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

10.times do |x|
  puts (" " * x) + "The Flinstones Rock!"
end 

=end

=begin 
2. The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)

This is because you cannot concatenate a string with an integer
Solutions:
  String interpolation
    puts " the value of 40 + 2 is #{40 + 2}"

=end 


=begin 
3. Alan wrote the following method, which was intended to show all of the factors of the input number
def factors(number)
  divisor = number
  factors = []
  loop do 
    break if divisor <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors

end

  LS ANSWER:

  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

=end 

=begin 
4. Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

Yes, this one is mutative (<<), thus will permanently alter  `buffer`

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

This one is reassignment `=` and thus returns a new object and does not mutate the caller

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

=end 

=begin 
5. Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?
  The code throws an error message of undefined local variable `limit`. Since method definition are self contained, variables initialized outside the method definition are not accessible inside and vice versa. Thus, local variable `limit` can be passed in as an argument when the method `fib` is invoked 

def fib(first_num, second_num, final_num)

  while first_num + second_num < final_num # 1 + 1
    sum = first_num + second_num # sum = 2
    first_num = second_num # 2
    second_num = sum # 2
  end
  sum
end

limit = 15
result = fib(0, 1, limit)
puts "result is #{result}"

=end 

=begin 
6. What is the output of the following code?
  34

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

=end


=begin 
7. One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail: mess_with_demographics(munsters)
Did the family's data get ransacked? Why or why not? Yes, because inside the method definition it is using element reassignment `family_member["age"] += 42`, thus mutates the original hash because it is reassigned. 

=end 

=begin 
8. Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game: it returns the winning fist or, in the case of a tie, the fist that both players played.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

What is the result of the following call?
  paper 
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

=end 

=begin 
9. Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

What would be the return value of the following method invocation?
  no 
bar(foo)

=end 