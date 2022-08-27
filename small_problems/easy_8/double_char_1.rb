=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

=end


def repeater(str)
  arr = str.chars
  answer = []

  arr.each do |el|
   answer  << el * 2 
  end
   answer.join()
end 


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''