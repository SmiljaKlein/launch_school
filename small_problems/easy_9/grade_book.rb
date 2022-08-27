=begin 

Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.


Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Input: 3 integer arguments
  - each represents scored grades 
Output: A string with either 'A', 'B', 'C', 'D', or 'F' based on the average of the 2 integer arguments 

Rules:
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'  

Algorithm:
  - 'average_score' to house the average of the scores
    - to obtain average:
      - add all the scores and divide by how many scores are provided (in our case, 3 due to there being 3 arguments 
  


=end 

def get_grade(num1, num2, num3) 
  average_score = (num1 + num2 + num3) / 3

  if average_score >= 90 
    return 'A'
  elsif average_score >= 80 && average_score < 90 
    return 'B'
  elsif average_score >= 70 && average_score < 80
    return 'C'
  elsif average_score >= 60 && average_score < 70
    return 'D'
  else 
    return 'F'
  end 
end 

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"