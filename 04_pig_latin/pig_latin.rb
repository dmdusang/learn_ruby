#write your code here
def is_vowel(arry)
	if arry[0] == "a" || arry[0] == "i" || arry[0] == "e" || arry[0] == "o" || arry[0] == "u"
		return true
	
	else
		return false
	end
end
def get_first_consonant(arry)
	if arry[0] == "q" && arry[1] == "u"
		q_u = arry.slice!(0,2)
		arry = arry.concat q_u
	elsif arry[1] == "q" && arry[2] == "u"
		q_u = arry.slice!(0,3)
		arry = arry.concat q_u
	elsif is_vowel(arry) == false && arry[1] == "c" && arry[2] == "h"
		s_c_h = arry.slice!(0,3)
		arry = arry.concat s_c_h
	elsif is_vowel(arry) == false && arry[1] == "h" && arry[2] == "r"
		t_h_r = arry.slice!(0,3)
		arry = arry.concat t_h_r
	elsif arry[1] == "t" || arry[1] == "h" || arry[1]  == "r"
		first_two = arry.slice!(0,2)
		arry = arry.concat first_two
	else
		arry = arry.push(arry[0])
		arry.shift
	end
	return arry
end
def translate(word)
	end_sentence = []
	word = word.split(" ")
	
	word.each do |value|
	value = value.split("")
	if(is_vowel(value))
		value.push("a")
		value.push("y")
		value = value.join("")
		end_sentence.push(value)
	else
		value = get_first_consonant(value)
		value.push("a")
		value.push("y")
		value = value.join("")
		end_sentence.push(value)
	end
end
	end_sentence = end_sentence.join(" ")
	return end_sentence
end