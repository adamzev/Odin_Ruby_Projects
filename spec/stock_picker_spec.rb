require_relative  '../stock_picker'

describe "stock_picker" do

	it "picks the best day to buy and sell (highest first)" do
		expect(stock_picker([1,10])).to eq([0,1])
	end
	it "picks the best day to buy and sell (highest first)" do
		expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
	end

	it "handles lowest day last" do
		expect(stock_picker([5,2,7,9,8,1])).to eq([1,3])
	end
end

