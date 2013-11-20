# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class
require "./max_solution"

describe "#maximum" do
	it "should" do
		expect(maximum([1,2,3])).to eq(3)
	end
end

describe "Array", "#maximum" do
	it "should" do
		expect(maximum([1,2,3])).to eq(3)
	end
end