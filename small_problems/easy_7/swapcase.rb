=begin 
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.
=end 

def swapcase(string)
  arr = string.chars
  answer = arr.map do |element|
    if element == element.upcase
      element.downcase
    else
       element.upcase
    end
  end
   answer.join('')
end 


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
