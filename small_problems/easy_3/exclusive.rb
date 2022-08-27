=begin 

Problem:

The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

Input: two booleans 
Output: boolean value 

Rules:
  Explicit:
    - returns true if exactly one of its arguments is truthy 
      - returns false otherwise
    - boolean result of true or false 
  Implicit:
    xor?(5.even?, 4.even?) == true
      - ONLY 1 is TRUE
    xor?(5.odd?, 4.odd?) == true
      - ONLY 1 is true
    xor?(5.odd?, 4.even?) == false
      - BOTH are TRUE so it is false
    xor?(5.even?, 4.odd?) == false
      - BOTH are FALSE so it is false

Algorithm:
  - define xor? method which takes two parameters 
  - use || operator and if it evaluates to true then use != not true operator to return false
  
  

=end 

def xor?(num1, num2)
  if num1 || num2 == true
    return true 
  end
end 

p xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

