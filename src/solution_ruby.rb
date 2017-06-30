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

def sum_of_pairs(integers, sum)
	counter = 0
	
	final_array = []
	while counter < integers.length
		counter_two = 1
		while counter_two < integers.length
			if integers[counter] + integers[counter_two] == sum 
				final_array << integers[counter]
				final_array << integers[counter_two]
				return final_array
			else
				counter_two += 1
			end

		end 
		counter += 1
	end
end


def binary_array_to_number(arr)
  # your code here
end 
