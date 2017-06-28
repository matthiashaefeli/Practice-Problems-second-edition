def makeArrayConsecutive2(statues)
    sorted = statues.sort
    new_array = (sorted[0]..sorted[-1]).to_a
    return new_array.length - statues.length
end

def kebabize(string)
	f = string.split /(?=[A-Z])/
	return f.join("-").downcase
end

def middle(string)
	array = string.split("")
	until array.length <= 2
		array.pop
		array.shift
	end
	return array.join("")
end

def auto_complete(input, dictionary)
 new_array = []
 index = input.length
 dictionary.each do |word|
   if word[0..index-1] == input.downcase
     new_array << word
   end
  end
return new_array[0..4]
end

def sum_of_pairs(integers, sum)
end

def counting_duplicates(text)
	array = text.downcase.split("")
	dup = array.select{|element| array.count(element) > 1 }
	return dup.uniq.length
end

def reverse_alphabetic_characters(string)
  string.gsub!(/\d/, "")
  string.gsub!(/\W/, "")
  string.gsub!(/_/, "")
  string.reverse
end

