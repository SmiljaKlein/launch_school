# 1. What's my value part_1

# What does this code print and why?
=begin 
This code outputs `7` to the console and returns `nil`. Numbers are immutable and inside the method definition, `b` is reassinged (`+=`) and since variables are pointers, local variable `a` and `b` no longer point to the same object. 

=end
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# 2. What's my value part_2

=begin
What does this code print and why?
This code outputs `7` to the console. Even though the paramter is named the same as local variable `a`, since method definitions are self contained, meaning that variables initialized outside the method definition are not available inside the method definition and vice versa. 

=end
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# 3. What's my value part_3

=begin
This is the same as the previous answer. Local variables initialized outside the method definition are not available inside the method definition, because method definitions are self-contained. 
=end
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# 4. What's my value part_4

=begin
This outputs `Xy-zy` to the console. This is because `b[2] = '-'` is element reassignment, which is mutative. Thus, any changes made to local variable `b`'s value is reflected back on local variable `a`'s value. 
=end 
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# 5. What's my value part_5

=begin
This outputs `Xyzzy` to the console. This is because local variable `b` is reassigned `=`, which is not mutative inside the method definition, thus changing where local variable `b` points. 
=end
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# 6. What's my value part_6

=begin
This throws an `undefined` local method error message. This is because method definitions are self contained, thus has no access to local variable `a` that was initialized outside the method definition. 
=end 
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# 7.. What's my value part_7

=begin
This will output `3` to the console. This is method invocation with a block. Local variables initialized outside the block are accessible by the inner scope. Since the `each` method iterates through a collection applying the block one time in turn per element, local variable `a` is `=` reassigned to the element, thus since `3` is the last element, it outputs `3` 
=end 
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# 8. What's my value part_8

=begin
This will throw an `undefined local variable` error message. This is because local variable `a` was initailized in the inner scope and local variables initialized in the inner scope of a block are not accessible in the outer scope. 
=end 

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

#9. What's my value part_9

=begin
This will output `7` to the console. This is variable shadowing, which means that the block's parameter is named the same as the outer scoped variable, thus blocking any changes to the outer scoped variable. 

=end

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# 10. What's my value part_10

=begin
This will throw `undefined method + nil class`error message. This is because method definitions are self contained and the `each` method is invoked inside the method definition. 
=end 

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a