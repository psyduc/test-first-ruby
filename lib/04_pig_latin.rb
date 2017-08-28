def pig_latin (string)
	vowels = ["a","e","i","o","u"]
	array = string.split('') 
	if vowels.include?(array[0])
		array.push("ay")
	elsif (!vowels.include?(array[0]) && array[1] == "q" && array[2] == "u")
		removedOne = array.shift()
		removedTwo = array.shift()
		removedThree = array.shift()
		array.push(removedOne, removedTwo, removedThree, "ay")
	elsif (array[0] == "q" && array[1] == "u")
		removedOne = array.shift()
		removedTwo = array.shift()
		array.push(removedOne, removedTwo, "ay")
	elsif !(vowels.include?(array[0]) || vowels.include?(array[1]) || vowels.include?(array[2]))
		removedOne = array.shift()
		removedTwo = array.shift()
		removedThree = array.shift()
		array.push(removedOne, removedTwo, removedThree, "ay") 
	elsif !(vowels.include?(array[0]) || vowels.include?(array[1]))
		removedOne = array.shift()
		removedTwo = array.shift()
		array.push(removedOne, removedTwo, "ay")
	else
		removed = array.shift()
		array.push(removed, "ay")
	end
	array.join
end

def translate (string)
	word = string.split(" ")
	word.map! do |value| 
		pig_latin (value)
	end
	word.join(" ")
end