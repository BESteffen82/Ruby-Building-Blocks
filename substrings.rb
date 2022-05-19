dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	words = dictionary.map{|word| word if string.downcase.include?(word) == true}.compact
	count = words.map{|word| string.scan(word).length}
	word_count = words.zip(count).to_h	
end	

substrings("Howdy partner, sit down! How's it going?", dictionary)	