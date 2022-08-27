def add_name(arr, name)
	arr = arr << name
end 

names = ['bob', 'kim']
add_name(names, 'jim')
p names
