require "./src/solution_ruby.rb"

describe "consecutive" do

	it "gives te spaces missing in an given array" do 
		statues = [6, 2, 3, 8]
		expect(makeArrayConsecutive2(statues)).to eq 3
	end

	it "gives te spaces missing in an given array" do 
		statues = [0, 3]
		expect(makeArrayConsecutive2(statues)).to eq 2
	end

	it "gives te spaces missing in an given array" do 
		statues = [6, 3]
		expect(makeArrayConsecutive2(statues)).to eq 2
	end
end

describe "kebabize" do 

	it "returns a given camel string into a string with - bevor each upcase letter" do 
		string = "myCamelHaseThreeHumps"
		expect(kebabize(string)).to eq "my-camel-hase-three-humps"
	end

	it "returns a given string into a string with - " do 
		string = "myGameHasALotOfPlayers"
		expect(kebabize(string)).to eq "my-game-has-a-lot-of-players"
	end
end


describe "middle" do 

	it "returns the middle character of a given string" do 
		string = "test"
		expect(middle(string)).to eq "es"
	end

	it "returns the middle character of a given string" do 
		string = "testing"
		expect(middle(string)).to eq "t"
	end

	it "returns the middle character of a given string" do 
		string = "middle"
		expect(middle(string)).to eq "dd"
	end

	it "returns the middle character of a given string" do 
		string = "A"
		expect(middle(string)).to eq "A"
	end

	it "returns the middle character of a given string" do 
		string = "of"
		expect(middle(string)).to eq "of"
	end
end


describe "auto complete" do

	it "returns an array (only first 5 elements) of a dictionary if the first given letters mach" do
			dictionary=[ 'abnormal',
								  'arm-wrestling',
								  'absolute',
								  'airplane',
								  'airport',
								  'amazing',
								  'apple',
								  'ball' ]
			expect(auto_complete("ai", dictionary)).to eq ["airplane", "airport"]
	end

	it "returns an array (only first 5 elements) of a dictionary if the first given letters mach" do
			dictionary=[ 'abnormal',
								  'arm-wrestling',
								  'absolute',
								  'airplane',
								  'airport',
								  'amazing',
								  'apple',
								  'ball' ]
			expect(auto_complete("a", dictionary)).to eq ['abnormal','arm-wrestling','absolute','airplane','airport']
	end
end

describe "Counting duplicates" do 

	it "returns the number of dublicated letters or numbers" do 
		expect(counting_duplicates("")).to eq 0
	end

	it "returns the number of dublicated letters or numbers" do 
		expect(counting_duplicates("abcdef")).to eq 0
	end

	it "returns the number of dublicated letters or numbers" do 
		expect(counting_duplicates("hello")).to eq 1
	end

	it "returns the number of dublicated letters or numbers" do 
		expect(counting_duplicates("Indivisibilities")).to eq 2
	end
end

describe "reverse alphabetic characters" do 

	it "reverse a given string without non alphabetic characters" do 
		expect(reverse_alphabetic_characters("krishan")).to eq "nahsirk"
	end

	it "reverse a given string without non alphabetic characters" do 
		expect(reverse_alphabetic_characters("ab23c")).to eq "cba"
	end

	it "reverse a given string without non alphabetic characters" do 
		expect(reverse_alphabetic_characters("ultr53o?n")).to eq "nortlu"
	end

	it "reverse a given string without non alphabetic characters" do 
		expect(reverse_alphabetic_characters("n&^%$2556_o")).to eq "on"
	end
end


describe "sum of pairs" do 

	it "returns the two integers given the given sum" do
		integers = [1, 4, 8, 7, 3, 15]
		sum = 8 
		expect(sum_of_pairs(integers, sum)).to eq [1, 7]
	end
	
	it "returns the two integers given the given sum" do
		integers = [1, -2, 3, 0, -6, 1]
		sum = -6 
		expect(sum_of_pairs(integers, sum)).to eq [0, -6]
	end

	it "returns the two integers given the given sum" do
		integers = [1, 2, 3, 4, 1, 0]
		sum = 2 
		expect(sum_of_pairs(integers, sum)).to eq [1, 1]
	end

	it "returns the two integers given the given sum" do
		integers = [10, 5, 2, 3, 7, 5]
		sum = 10
		expect(sum_of_pairs(integers, sum)).to eq [5, 5]
	end

	it "returns the two integers given the given sum" do
		integers = [5, 9, 13, -3]
		sum = 10
		expect(sum_of_pairs(integers, sum)).to eq [13, -3]
	end
end


describe "binary code" do 

	it "returns the number of a binary code" do 
		expect(binary_array_to_number([0,0,0,1])).to eq 1
	end

	it "returns the number of a binary code" do 
		expect(binary_array_to_number([0,0,1,0])).to eq 2
	end

	it "returns the number of a binary code" do 
		expect(binary_array_to_number([1,1,1,1])).to eq 15
	end

	it "returns the number of a binary code" do 
		expect(binary_array_to_number([0,1,1,0])).to eq 6
	end
end

describe "square digits" do 

	it "returns square of each number" do 
		expect(square_digits(3212)).to eq 9414
	end

	it "returns square of each number" do 
		expect(square_digits(1234321)).to eq 14916941
	end
end


describe "encode" do 

	it "returns an array with ne number given of a string and a key" do
		expect(encode("scout", 1939)).to eq [20, 12, 18, 30, 21]
	end

	it "returns an array with ne number given of a string and a key" do
		expect(encode("masterpiece", 1939)).to eq [14, 10, 22, 29, 6, 27, 19, 18, 6, 12, 8]
	end

	it "returns an array with ne number given of a string and a key" do
		expect(encode("aaaaaaa", 18)).to eq [2,9,2,9,2,9,2]
	end
end

describe "find longest" do 

	it "returns longes digit of a given array with numbers" do
		expect(find_longest([1, 10, 100])).to eq 100
	end

	it "returns longes digit of a given array with numbers" do
		expect(find_longest([1, 200, 100000])).to eq 100000
	end
end

describe "get count" do 

	it "returns how many vowels and consonants has a word" do 
		expect(get_count("Test")).to eq [1,3]
	end

	it "returns how many vowels and consonants has a word" do 
		expect(get_count("To be a Codewarrior or not to be")).to eq [12,13]
	end

	it "returns how many vowels and consonants has a word" do 
		expect(get_count("$$%&*12345 66 }} ab")).to eq [1,1]
	end
end

describe "mean" do 

	it "returns an array with the sum of the given number and the string" do 
		lst = ["u", "6", "d", "1", "i", "w", "6", "s", "t", "4", "a", "6", "g", "1", "2", "w", "8", "o", "2", "0"]
		expect(mean(lst)).to eq [3.6, "udiwstagwo"]
	end

	it "returns an array with the sum of the given number and the string" do 
		lst = ["1", "1", "1", "1", "1", "1", "1", "1", "1", "0", "a", "a", "d", "d", "g", "q", "u", "v", "y", "y"]
		expect(mean(lst)).to eq [0.9, "aaddgquvyy"]
	end
end

describe "group" do 

	it "returns an array of an array sort in numbers how the given" do 
		expect(group([3, 2, 6, 2, 1, 3])).to eq [[3, 3], [2, 2], [6], [1]]
	end

	it "returns an array of an array sort in numbers how the given" do 
		expect(group([3, 2, 6, 2])).to eq [[3], [2, 2], [6]]
	end

	it "returns an array of an array sort in numbers how the given" do 
		expect(group([1, 100, 4, 2, 4])).to eq [[1], [100], [4, 4], [2]]
	end
end


describe "delete nth" do 

	it "returns a given array with the given count max of each element" do 
		expect(delete_nth([20,37,20,21], 1)).to eq [20,37,21]
	end

	it "returns a given array with the given count max of each element" do 
		expect(delete_nth([1,1,3,3,7,2,2,2,2], 3)).to eq [1, 1, 3, 3, 7, 2, 2, 2]
	end
end

describe "take" do 

	it "takes an array and an integer and give ....... check tests" do 
		expect(take([1,2,3,4], 1)).to eq [2,3,4]
	end

	it "takes an array and an integer and give ....... check tests" do 
		expect(take([1,2,3,4], 2)).to eq [3,4]
	end

	it "takes an array and an integer and give ....... check tests" do 
		expect(take([1,2,3,4])).to eq [2,3,4]
	end
end


describe "find even index" do 

	it "takes an array and return the index of the number in the middle where both side give the same sum" do
		expect(find_even_index([1,2,3,4,5,6])).to eq -1
	end

	it "takes an array and return the index of the number in the middle where both side give the same sum" do
		expect(find_even_index([20,10,30,10,10,15,35])).to eq 3
	end

	it "takes an array and return the index of the number in the middle where both side give the same sum" do
		expect(find_even_index([10,-80,10,10,15,35,20])).to eq 6
	end

	it "takes an array and return the index of the number in the middle where both side give the same sum" do
		expect(find_even_index([-1,-2,-3,-4,-3,-2,-1])).to eq 3
	end
end


describe "increment string" do 

	it "takes a string and a number and give back the string with the number +1" do
		expect(increment_string("foo")).to eq "foo1"
	end

	it "takes a string and a number and give back the string with the number +1" do
		expect(increment_string("foobar1")).to eq "foobar2"
	end

	it "takes a string and a number and give back the string with the number +1" do
		expect(increment_string("")).to eq "1"
	end

	it "takes a string and a number and give back the string with the number +1" do
		expect(increment_string("foobar99")).to eq "foobar100"
	end
end

describe "find it" do

	it "Given an array, find the int that appears an odd number of times." do
		expect(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])).to eq 5
	end

	it "Given an array, find the int that appears an odd number of times." do
		expect(find_it([1,1,1,1,1,1,10,1,1,1,1])).to eq 10
	end
end

describe "duplicate encode" do

	it " convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')'" do
		expect(duplicate_encode("din")).to eq "((("
	end

	it " convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')'" do
		expect(duplicate_encode("Success")).to eq ")())())"
	end

	it " convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')'" do
		expect(duplicate_encode("(( @")).to eq "))(("
	end
end

























































