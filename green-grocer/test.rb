ITEMS = [  {"AVOCADO" => {:price => 3.00,:clearance => true}},
            {"KALE" => {:price => 3.00,:clearance => false}},
            {"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
            {"ALMONDS" => {:price => 9.00,:clearance => false}},
            {"TEMPEH" => {:price => 3.00,:clearance => true}},
            {"CHEESE" => {:price => 6.50,:clearance => false}},
            {"BEER" => {:price => 13.00,:clearance => false}},
            {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
            {"BEETS" => {:price => 2.50,:clearance => false}}
        ]

COUPS = [   {:item=>"AVOCADO", :num=>2, :cost=>5.00},
            {:item=>"BEER", :num=>2, :cost=>20.00},
            {:item=>"CHEESE", :num=>3, :cost=>15.00}]

def generateCart
    cart = []
    rand(20).times do
        cart.push(ITEMS.sample)  
    end
    cart
end

def generateCoups
    coups = []
    rand(2).times do
        coups.push(COUPS.sample)
    end
    coups
end

# # puts ten_discount(ITEMS, cost)
# generateCart
puts multiples(generateCart)
# puts "break"
# puts coups = generateCoups
# puts "break two"
# puts check_for_coupons(multiples(cart), coups)
