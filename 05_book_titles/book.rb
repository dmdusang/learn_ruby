class Book
	attr_accessor :title
	def title=(title)
		@title = titleize(title)
	end
def titleize(word)
	new_word = []
	word = word.split(" ")
	word.each_with_index do |value, some_index|
		if some_index == 0
			new_word.push(value.capitalize)
		elsif value != "and" && value != "but" && value != "if" && value != "over" && value != "the" && value != "of" && value != "in" && value != "a" && value != "an"
			new_word.push(value.capitalize)
		else
			new_word.push(value)
		end
	end
	new_word = new_word.join(" ")
	return new_word

end
end
