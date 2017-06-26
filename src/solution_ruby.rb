def makeArrayConsecutive2(statues)
    sorted = statues.sort
    new_array = (sorted[0]..sorted[-1]).to_a
    return new_array.length - statues.length
end

def kebabize(string)
	f = string.split /(?=[A-Z])/
	return f.join("-").downcase
end

