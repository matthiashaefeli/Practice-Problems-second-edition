require "./src/solution_ruby.rb"

describe "onsecutive" do

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