class Array

	def sum
		answer = 0
		self.each do |value|
			answer += value
		end
		answer
	end

	def square
		answer = []
		answer = self.map do |value|
			value ** 2
		end
		answer
	end

	def square!
		self.map! do |value|
			value ** 2
		end
	end
end