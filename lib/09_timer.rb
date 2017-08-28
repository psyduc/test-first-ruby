class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		second = @seconds%60
		minutes = (@seconds/60)%60
		hours = (@seconds)/3600
		padded(hours) + ":" + padded(minutes) + ":" + padded(second)
	end

	def padded(number)
		number > 10 ? number.to_s : "0" + number.to_s
	end
end