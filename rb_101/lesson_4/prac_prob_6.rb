# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |el|
  el.slice(0, 3)
end 
p flintstones

