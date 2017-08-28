def reverser 
	array = yield().split(" ").collect {|word| word.reverse}
	array.join(" ")
end

def adder (y = 1)
	x = yield()
	x + y
end

def repeater (x = 1)
	x.times do
		if yield()
			block_was_executed = true
		end
	end
end