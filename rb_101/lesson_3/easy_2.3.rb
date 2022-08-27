# Add ages for Marylin and Spot to the existing hash 

ages = { "Herman" => 32, "Lily" => 30, "Granpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marylin" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)