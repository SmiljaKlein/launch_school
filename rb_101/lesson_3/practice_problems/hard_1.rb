=begin 
1. What do you expect to happen when the greeting variable is referenced in the last line of the code below?

  if false
  greeting = "hello world"
end

greeting

  Local variable `greeting` is initialized to `nil` because it was initilialized inside the `if` block

=end


=begin 
2. What is the result of the last line in the code below?
  The result of the last line {:a=>"hi there"} this is because on `line 21` the `<<` method is mutative thus changes the original objcet. 

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=end


=begin 
3. What will the following codes output?

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one is: "one"
puts "two is: #{two}" # => "two is: "two"
puts "three is: #{three}" #=> "three is: "three"
 # * This is because the parameters were reassigned to point to different objects

----
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one is: "one"
puts "two is: #{two}" # => "two is: "two"
puts "three is: #{three}" # => "three is: "three"
 # * This is because the parameters were reassigned to point to different objects

---

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"  # => "one is: "two"
puts "two is: #{two}"  # => "two is: "three"
puts "three is: #{three}" # => "three is: "one"
 # * String#gsub! is a mutative method, thus carried over to the original object.

=end 


=begin 
4. Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". He is not familiar with regular expressions. Alyssa supplied Ben with a method called is_an_ip_number? that determines if a string is a numeric string between 0 and 255 as required for IP numbers and asked Ben to use it. Fix the code:


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

=end 


