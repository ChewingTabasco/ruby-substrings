dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
	# test = dictionary.find_all {|word| string.scan(/#{word}/)}


	dictionary.reduce(Hash.new(0)) do |hash, key|
		hash[key] += 1
		hash
	end
end


p substrings("Howdy partner, sit down! How's it going?", dictionary)
