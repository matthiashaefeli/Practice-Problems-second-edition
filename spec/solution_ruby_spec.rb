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


describe "sum of pairs" do 

	it "returns the two integers given the given sum" do
		integers = [1, 4, 8, 7, 3, 15]
		sum = 8 
		expect(sum_of_pairs(integers, sum)).to eq [7, 1]
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
		expect(sum_of_pairs(integers, sum)).to eq [3, 7]
	end

	it "returns the two integers given the given sum" do
		integers = [5, 9, 13, -3]
		sum = 10
		expect(sum_of_pairs(integers, sum)).to eq [13, -3]
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


































