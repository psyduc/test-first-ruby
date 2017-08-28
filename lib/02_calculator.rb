def add (a,b)
	a + b
end

def subtract (c,d)
	c - d
end

def sum(numbers)
  return 0 if numbers.length < 1
  result = 0
  numbers.each { |num| result += num }
  result
end

def multiply (array)
	sol = 1
	array.each { |x| sol *= x}
	sol
end

def power (number, exponent)
	return 1 if exponent == 0
	solution = 1
	for x in 1..exponent
		solution *= number
	end
	solution
end

def factorial (number)
	return 1 if number == 0
	sol = 1
	for x in 1..number
		sol *= x
	end
	sol
end
