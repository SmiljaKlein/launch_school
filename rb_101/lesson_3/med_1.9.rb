# What would be the return value of the following method invocation?

def foo(param = "no")
  "yes"
end

def bar(param = "no") 
  param == "no" ? "yes" : "no"
end

bar(foo) 