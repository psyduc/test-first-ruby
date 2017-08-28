class Book
  # TODO: your code goes here!
  def title
  	@title
  end

  def title=(new_title)
  	articles = ["the", "an", "a", "in", "of", "and"]
  	words = new_title.split(" ")
  	words[0] = words[0].capitalize
  	words.map! do |word|
  		if articles.include?(word)
  			word
  		else
  			word.capitalize
  		end
  	end
  	@title = words.join(" ")
  end

end
