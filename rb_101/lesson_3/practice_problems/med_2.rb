=begin 
1. Every object in Ruby has access to a method called object_id, which returns a numerical value that uniquely identifies the object. This method can be used to determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a

puts a.object_id # same object_id as c 
puts b.object_id # diff object_id than a and c 
puts c.object_id # same object_id as a 

=end

=begin 
2. Let's take a look at another example with a small difference in the code:
a = 42
b = 42
c = a

Numbers are immutable, thus a, b, c have the same object_id 

=end 

=begin 
3. Let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby, the results can be different.

Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

The string will return a new string object `+=`
My string looks like this now: pumpkins

The array was `<<` which appends a new element to the existing object 
My array looks like this now: ["pumpkins", "rutabaga"]

=end 

=begin 
4. To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

The `<<` appended `rutabaga` to the original string 
My string looks like this now: pumpkinsrutabaga

Inside the method definition, `my_array` was reassigned to a new array object. 
My array looks like this now: ["pumpkins"]

=end 

=begin 
5. Depending on a method to modify its arguments can be tricky:

How can we change the code to make the result easier to predict and easier for the next programmer to maintain? That is, the resulting method should not mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and my_array should be set to ['pumpkins', 'rutabaga']

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=end 

=begin 
6. How could the following method be simplified without changing its return value?

def color_valid(color)
  color == "blue" || color == "green"
end