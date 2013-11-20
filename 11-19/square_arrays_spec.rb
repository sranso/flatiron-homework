# Instructions:
# Return an array that contains the squares of all elements in an array?

require "./square_arrays_solution"

describe "#square_array" do
	it "should return an array that contains the sqaures of all elements in array" do
		expect(square_array([3,2,5])).to eq([9,4,25])
	end
end