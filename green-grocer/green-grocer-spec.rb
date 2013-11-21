require "./green-grocer-solution"

describe "#multiples" do
    it "should tell you the count if there are multiple items" do
        expect(multiples([{"AVOCADO" => {:price => 3.00,:clearance => true}},{"AVOCADO" => {:price => 3.00,:clearance => true}}])).to eq([{"AVOCADO" => {:price => 3.00,:clearance => true, :count => 2}}])
    end
end
#for some reason this isn't working when hard-coded, but it does work with random generator

describe "#checkout" do
    it "should calculate the total cost of the cart" do
        expect().to eq()
    end
end

describe "" do
    it "when checking out, should check the coupons and apply the discount if the proper number of items is present" do
        expect().to eq()
    end
end

# describe "#total_cost" do
#     it "should sum the cost of the items" do
#         expect().to eq
#     end
# end