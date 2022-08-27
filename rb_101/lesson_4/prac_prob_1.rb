# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
idx = 0 
hsh = {} 

flintstones.each do |el|
  hsh[el] = idx
  idx += 1 
end 
p hsh 
