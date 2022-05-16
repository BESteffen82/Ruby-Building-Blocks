require 'pry-byebug'

def ceasar_cipher (string, factor)
	alpha_to_num = ("a".."z").zip(1..26).to_h
	alpha_to_num[" "] = 0
	num_to_alpha = (1..26).zip("a".."z").to_h
	num_to_alpha[nil] = " "	
	letters_to_nums = string.each_char.filter_map do |letter| 
		(alpha_to_num[letter])
		#alpha_to_num[letter] = letter if 
	end
	binding.pry
	new_nums = letters_to_nums.map do |number| 
		number + factor if number != 0
	end			
	new_alpha = new_nums.map{|number| num_to_alpha[number]}
	new_string = new_alpha.join("")
	new_string
end

ceasar_cipher("hello man!", 3)


