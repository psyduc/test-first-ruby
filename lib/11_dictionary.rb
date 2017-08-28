class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries

  def initialize
  	@entries = {}
  end

  def add(entry)
  	if entry.is_a?(String)
  		@entries[entry]=nil
  	else
  		entry.each do |key, value|
  			@entries[key] = value
  		end
  	end
  end

  def keywords
  	@entries.keys.sort
  end

  def include?(entry)
  	if @entries.keys.include?(entry)
  		true
  	else 
  		false
  	end
  end

  def find(search)
  	answer = {}
  	@entries.each do |key,value|
  		if(key.match(/#{search}/))
  			answer[key]=value
  		end
  	end
  	answer
  end

  def printable
  	solution = @entries.sort.map do |key,value|
  		"[#{key}] \"#{value}\""
  	end
  	solution.join("\n")
  end

end