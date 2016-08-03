require_relative  '../caesar_cipher'

describe "caesar_cipher" do
	it "shifts a letter by a shift factor of 3" do
		expect(caesar_cipher("a", 1)).to eq("d")
	end
	it "shifts a word by a shift factor of 1" do
		expect(caesar_cipher("abc", 1)).to eq("bcd")
	end
	it "shifts a word by a shift factor of 5" do
		expect(caesar_cipher("cat", 5)).to eq("hfy")
	end
	it "shifts a word by a shift factor of 10" do
		expect(caesar_cipher("cable", 10)).to eq("mklvo")
	end

	it "wraps around the alphabet" do
		expect(caesar_cipher("xyz", 6)).to eq("def")
	end

	it "preserves capitalization" do
		expect(caesar_cipher("JavaScript", 10)).to eq("VmhmEodubf")
	end


	it "shifts multiple words and preserves spaces" do
		expect(caesar_cipher("abc and cat", 4)).to eq("efg erh gex")
	end

	it "preserves spaces and punctuation" do
		expect(caesar_cipher("abc and cat", 4)).to eq("efg erh gex")
	end

	it "translates messages" do
		expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end
end
