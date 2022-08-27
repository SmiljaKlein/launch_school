limit = 15

def fib(first_num, second_num, limit)
  first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"