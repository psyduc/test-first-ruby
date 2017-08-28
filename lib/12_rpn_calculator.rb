class RPNCalculator
  # TODO: your code goes here!
  def initialize
  	@calculator = []
  end

  def push(x)
  	@calculator.push(x) 
  end

  def value
  	@calculator[-1]
  end

  def plus
  	if @calculator.size > 1
  		sum = @calculator.pop + @calculator.pop
  		@calculator.push(sum)
  	else
  		raise "calculator is empty"
  	end
  end

  def minus
  	if @calculator.size > 1
	  	first = @calculator.pop
	  	second = @calculator.pop
	  	diff = second - first
	  	@calculator.push(diff)
	  else
		  raise "calculator is empty"
	  end
  end

  def divide
  	if @calculator.size > 1 
	  	first = @calculator.pop.to_f
	  	second = @calculator.pop.to_f
	  	quotient = second / first
	  	@calculator.push(quotient)
	  else
	  	raise "calculator is empty"
	  end
  end

  def times 
  	if @calculator.size > 1
	  	product = @calculator.pop * @calculator.pop
	  	@calculator.push(product)
	  else
		  raise "calculator is empty"
	  end
  end

  def tokens(string)
  	array = string.split(" ").map do |x|
  		if x == "+" || x == "-" || x == "/" || x == "*"
  			x.to_sym
  		else
  			x.to_i
  		end
  	end
  end

  def evaluate(string)
  	tokens(string).each do |x|
  		if x == :+
  			self.plus
  		elsif x == :-
  			self.minus
  		elsif x == :/
  			self.divide
  		elsif x == :*
  			self.times
  		else
  			self.push(x)
  		end
  	end
  	self.value
  end

end
