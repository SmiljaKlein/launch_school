# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = ('aeiou')

hsh.each do |key, value|
  value.each do |el|
    el.chars.each do |char|
      if VOWELS.include?(char)
        puts char
      end 
    end 
  end 
end 