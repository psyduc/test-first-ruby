class XmlDocument
  # TODO: your code goes here!

  def initialize(indent = false)
  	@indent = indent
  	@indent_value = 0
  end

  def method_missing(name, *args, &block)
  	xml = ""
  	attributes = args[0] || {}
  	xml << "<#{name}"
  	attributes.each_pair do |key, value| 
  		xml << " #{key}=\"#{value}\""
  	end
  	if block
  		 xml << ">"
  		 @indent_value += 1
  		 xml << "\n" if @indent
  		 xml << "  "*@indent_value if @indent
  		 xml << yield
  		 @indent_value -= 1
  		 xml << "  "*@indent_value if @indent
  		 xml << "</#{name}>"
  		 xml << "\n" if @indent
  	else 
  	xml << "/>"
  	xml << "\n" if @indent
  	end
  	xml
  end

end