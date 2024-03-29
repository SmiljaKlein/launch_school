=begin 

Problem:

Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

Input: string
Output: string 

Rules: 
  Explicit:
    - case-insensitive
    - ignore all non-alphanumeric characters
  Implicit:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

Algorithm:
- clean the string 
  - downcase strings
    - if string includes (') or (,) delete 
    

=end 



def real_palindrome?(string)
  string = string.downcase.delete('^a-z')
  string == string.reverse

end 

p real_palindrome?('madam') == true 
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false