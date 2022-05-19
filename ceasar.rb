def ceasar_cipher (string, factor)
	alpha_to_num = ("a".."z").zip(1..26).to_h
	alpha_to_num[" "] = 0
	num_to_alpha = (1..26).zip("a".."z").to_h
	num_to_alpha[nil] = " "	
	letters_to_nums = string.downcase.each_char.filter_map do |letter| 
		if ("a".."z").to_a.include?(letter) == true 
			(alpha_to_num[letter])
		elsif ("a".."z").to_a.include?(letter) == false
			letter = letter
		end		
	end		
	factored_nums = letters_to_nums.map do |number|		
		if (0..26).to_a.include?(number) == false
			number = number					
		elsif number + factor > 26 && number != 0
			number = ((number + factor) - 26) % 26
		elsif number != 0
			number + factor	  
		end
	end		
	new_alpha = factored_nums.map do |number|
	  if (1..26).to_a.include?(number) == false
			number = number
		elsif (1..26).to_a.include?(number) == true		
		num_to_alpha[number]
		end
	end	
	cap_letter_index = string.split("").each_with_index.select{|letter, index| ("A".."Z").to_a.include?(letter) == true}.map {|pair| pair[1]}
	cap_letters = cap_letter_index.map do |place,index|
		new_alpha[place].upcase 
	end
	cap_letters.each_with_index.map{|letter, index| new_alpha[cap_letter_index[index]] = cap_letters[index.to_i]}	
end

ceasar_cipher("Lets Go Canes!", 145)


