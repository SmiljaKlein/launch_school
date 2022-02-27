# Question: What will the following program print to the screen? What will it return? Modify it to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

