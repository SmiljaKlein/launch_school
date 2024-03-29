=begin 
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:


=end 

def substrings(str)
 (0...str.size).each_with_object([]) do |idx1, arr|
    (idx1...str.size).each do |idx2|
    arr << str[idx1..idx2]
    end 
    arr
  end  
end 

p substrings('abcde') #== [
  # 'a', 'ab', 'abc', 'abcd', 'abcde',
  # 'b', 'bc', 'bcd', 'bcde',
  # 'c', 'cd', 'cde',
  # 'd', 'de',
  # 'e'
#]