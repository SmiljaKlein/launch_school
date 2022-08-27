=begin 
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Input: a string with alphabetic and non-alphabetic characters
Output: The string with the alphabetic characters doubled that are not vowels 

Rules:
  Do not double non-alphabetic characters
  Do not double vowels

Algorithm:
  create doubled_arr to contain the return value 
  break the string into individual characters in an array 
  iterate through the array:
    - if the character is not a vowel, push it into doubled_arr []  


=end 
VOWELS = ["a", "e", "i", "o", "u"]
def double_consonants(str)
  doubled_arr = [] 
  arr = str.chars 
  arr.each do |el|
     if !VOWELS.include?(el) 
     doubled_arr << el 
     else 
      doubled_arr << el 
    end 
  end 
 doubled_arr.join
end 

#CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)


#double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
# double_consonants("July 4th") #== "JJullyy 4tthh"
# double_consonants('') #== ""