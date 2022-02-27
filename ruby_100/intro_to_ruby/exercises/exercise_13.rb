=begin Question: Use Ruby's Array method delete_if and String method start_with? to delete all
of the strings that begin with an "s" in the following array. Then Recreate the arr and get rid 
of all of the strings that start with "s" or starts with "w"
=end 


arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# Solution 

 arr.delete_if {|word| word.to_s.start_with?('s') || word.to_s.start_with?('w') }
p arr

