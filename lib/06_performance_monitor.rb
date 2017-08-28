def measure (x = 1)
	time_before_test = Time.now
	x.times do
		yield()
	end
	time_after_test = Time.now
	elapsed_time = (time_after_test - time_before_test) / x
end