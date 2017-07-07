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

def encode(message, key)
  alphabet = ("a".."z").to_a
  counter = 0
  str = key.to_s.split("")
  result = []
  message.split("").each do |letter|
   number = alphabet.index(letter)+1
   if counter == str.length
     counter = 0
     new_number = number + str[counter].to_i
     counter += 1
   else
     new_number = number + str[counter].to_i
     counter += 1
   end
	 result << new_number
 	end
 return result
end


def find_longest(arr)
	longest = 0
	result = 0
	arr.each do |i|
		if i.to_s.length > longest
		 longest = i.to_s.length
		 result = i
		end
	end
	return result
end

def get_count(words)
	words.gsub!(/\s|\d|\W/, "")
	 vowels_count = words.downcase.scan(/[aeoui]/).count
	consonants_count = words.length - vowels_count
	result = [vowels_count, consonants_count]
	return result
end


def mean(lst)
  result = []
  total = 0
  number_array = lst.join.gsub(/\D/, "").split("")
  string = lst.join.gsub(/[^a-z]/, "")
  number_array.each do |n|
    total += n.to_i
  end
  result << total/10.to_f
  result << string
  return result
end


def binary_array_to_number(bin)
	return bin.join("").to_i(2)
end

def group(num_array)
	counter = 0
	new_array = []
	until counter >= num_array.length
		if new_array.include?(num_array.select { |n| n == num_array[counter] })
			counter += 1
		else
		new_array << num_array.select { |n| n == num_array[counter] }
		counter += 1
	end
	end
	return new_array
end

def delete_nth(order,max_e)
  final_array = []
  order.each do |n|
    if final_array.count(n) < max_e
      final_array << n
    end
  end
  return final_array
end

def take(a, l=1)
    a[l..-1]
end

def find_even_index(arr)
  counter = 0
  until counter == arr.length
    if sum(arr[0..counter]) == sum(arr[counter..-1])
    return counter
    else
    counter += 1
    end
    end
    return -1
end

def sum(array)
  result = 0
  array.each do |n|
    result += n
  end
  result
end

def square_digits(numbers)
	n_array = numbers.to_s.split("")
	new_array = []
	n_array.each do |n|
		new_array << n.to_i * n.to_i
	end
	new_array.join("").to_i
end

def increment_string(string)
	number = string.gsub(/\D/, "")
	new_number = number.to_i + 1
	result = string.gsub(/\d/, "") + new_number.to_s
	result
end

def find_it(seq)
  seq.each do |n|
    if seq.count(n).odd?
      return n
    end
  end
end

def duplicate_encode(word)
  result = ""
  word_array = word.downcase.split("")
  word_array.each do |l|
    if word_array.count(l) > 1
      result << ")"
    else
      result << "("
    end
 end
 return result
end









