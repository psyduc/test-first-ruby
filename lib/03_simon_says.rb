def echo (string)
	string
end

def shout (string)
	string.upcase
end

def repeat (string, number = 2)
	sol = []
	i = 1
	loop do
		i += 1
		sol.push(string)
		break if i > number
	end
	sol.join(" ")
end

def start_of_word (string, number = 1)
	string[0,number]
end

def first_word (string)
	sol = string.split(" ")
	sol[0]
end

def titleize (string)
	array = string.split(" ")
	firstWord = array[0].split("")
	firstWord[0] = firstWord[0].upcase
	x = firstWord.join("")
	array[0] = x
	ignoreList = ["and", "over", "the"]
	array.each{ |word|
		if !ignoreList.include?(word)
			word[0] = word[0].upcase
		end
	}
	array.join(" ")
end