dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
	list_of_matches = []
	dictionary.each do |word|
		list_of_matches += string.downcase.scan(word)
	end

	list_of_matches.reduce(Hash.new(0)) do |hash, key|
		hash[key] += 1
		hash
	end
end


p substrings("Howdy partner, sit down! How's it going?", dictionary)