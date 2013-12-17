require "./green-grocer-solution"

describe "#count" do
    it "should count the total number of items in the cart" do
        expect(count([{"AVOCADO" => {:price => 3.00,:clearance => true}},{"AVOCADO" => {:price => 3.00,:clearance => true}}])).to eq(2)
    end
end

describe "#multiples" do
    it "should tell you the number of multiple items in the cart" do
        expect(multiples([{"KALE"=>{:price=>3.0, :clearance=>false, :count=>2}}, {"KALE"=>{:price=>3.0, :clearance=>false, :count=>2}}])).to eq([{"KALE"=>{:price=>3.0, :clearance=>false, :count=>2}}])
    end
end

describe "#cost_of_multiples" do
    it "should calculate the cost of all items in the cart" do
        expect(cost_of_multiples([{"KALE"=>{:price=>3.0, :clearance=>false, :count=>2}}])).to eq([{"KALE"=>{:price=>6.0, :clearance=>false, :count=>2}}])
    end
end

describe "#checkout" do
    it "should calculate the total cost of the cart" do
        expect(checkout([{"AVOCADO"=>{:price=>3.0, :clearance=>true, :count=>1}},
        {"BLACK_BEANS"=>{:price=>5.0, :clearance=>false, :count=>2}},
        {"BEER"=>{:price=>13.0, :clearance=>false, :count=>1}},
        {"BEETS"=>{:price=>2.5, :clearance=>false, :count=>1}}])).to eq(23.5)
    end
end

describe "#apply_coupons1" do
    it "should add cost of coupons to an empty cost" do
        expect(apply_coupons1([{"AVOCADO"=>{:price=>6.0, :clearance=>true, :count=>2}},
        {"TEMPEH"=>{:price=>6.0, :clearance=>true, :count=>2}},
        {"CHEESE"=>{:price=>26.0, :clearance=>false, :count=>4}}],[{:item=>"AVOCADO", :num=>2, :cost=>5.0}])).to eq(5)
    end
end

describe "#apply_coupons2" do
    it "should remove coupon-ed items from the cart, returns new cart" do
        expect(apply_coupons2([{"AVOCADO"=>{:price=>3.0, :clearance=>true, :count=>3}},
        {"TEMPEH"=>{:price=>6.0, :clearance=>true, :count=>2}},
        {"CHEESE"=>{:price=>26.0, :clearance=>false, :count=>4}}],[{:item=>"AVOCADO", :num=>2, :cost=>5.0}])).to eq([{"AVOCADO"=>{:price=>3.0, :clearance=>true, :count=>1}},
        {"TEMPEH"=>{:price=>6.0, :clearance=>true, :count=>2}},
        {"CHEESE"=>{:price=>26.0, :clearance=>false, :count=>4}}])
    end
end

describe "#apply_clearance" do
    it "should take 20% off any item on clearance in the cart" do
        expect(apply_clearance()).to eq()
    end
end