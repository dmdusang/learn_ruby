#write your code here
def ftoc(fare)
	cels = (fare-32) * 5.0/9.0
	return cels
end

def ctof (cels)
	fare = (cels * 9.0/5.0) +32
end

