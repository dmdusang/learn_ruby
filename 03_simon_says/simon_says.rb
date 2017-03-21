#write your code here
def echo(word)
	"#{word}"
end

def shout(word)
	"#{word.upcase}"
end

def repeat(word, number=0)
	string = ""
	if number > 0
		for i in 1..number
			if i < number 
			string += "#{word} "
			else
			string += "#{word}"
			end
		end
		return string
	else
		return "#{word} #{word}"
	end
end

def start_of_word(word, index)
	word = word.split("")
	return_string = ""
	for i in 1..index
		return_string += word[i-1]
	end
	return return_string
end

def first_word(phrase)
	phrase = phrase.split(" ")
	return phrase[0]
end

def titleize(word)
	new_word = []
	word = word.split(" ")
	word.each_with_index do |value, some_index|
		if some_index == 0
			new_word.push(value.capitalize)
		elsif value != "and" && value != "but" && value != "if" && value != "over" && value != "the"
			new_word.push(value.capitalize)
		else
			new_word.push(value)
		end
	end
	new_word = new_word.join(" ")
	return new_word

end