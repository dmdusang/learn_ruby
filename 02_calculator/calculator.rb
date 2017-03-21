#write your code here
def add(int1, int2)
	return int1 + int2
end

def subtract(int1, int2)
	return int1 - int2
end

def sum(arry)
	new_sum = 0 
	arry.each {|a| new_sum += a}
	
	return new_sum
end
