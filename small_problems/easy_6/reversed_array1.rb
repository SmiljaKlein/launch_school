# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.


#You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  array[0], array[-1] = array[-1], array[0] = array[2], array[3] = array[3], array[2]
end 


list = [1,2,3,4]
p result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true


=begin
def reverse!(array)
  num = array.size / 4
  idx = 0
  back_idx = -1
  num.times do |_|
    array[idx], array[idx+1] = array[back_idx], array[back_idx-1]
    idx += 1
    back_idx -= 1
  end
  p array

end