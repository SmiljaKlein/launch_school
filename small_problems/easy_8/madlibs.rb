=begin 

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

Input: user input for a noun, verb, adjective, adverb
Output: String interpolation with theverb, adjective, noun, and adverb

Rules:
  Mad libs game:
    - story template with blanks for words
    - user constructs the list of words 
      -- those words get placed into the story
      -- the return value is the story 

Algorithm:
  Ask user input for a verb, adjective, noun, and adverb
  Use string interpolation to output a string 


Do you walk your blue dog quickly? That's hilarious!
=end 

def mad_lib
  puts "Enter a verb: "
  verb = gets.chomp
  puts "Enter an adjective: "
  adjective = gets.chomp
  puts "Enter a noun: "
  noun = gets.chomp 
  puts "Enter an adverb: "
  adverb = gets.chomp

   "Does your #{verb} your #{adjective} #{noun} #{adverb}? "
end 

p mad_lib
