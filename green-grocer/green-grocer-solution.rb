##Objectives: 
# Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

# Dr. Steve Bruhle, your green grocer, isnt ready, but you are!

# ##Skills: 
# any?, all?, none?, each, map/collect

# ##Instructions:
# Code generates a random cart of items and a random set of coupons. Implement a method checkout to calculate total cost of a cart of items and apply discounts and coupons as necessary.

# ##Code:

ITEMS = [  {"AVOCADO" => {:price => 3.00,:clearance => true}},
            {"KALE" => {:price => 3.00,:clearance => false}},
            {"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
            {"ALMONDS" => {:price => 9.00,:clearance => false}},
            {"TEMPEH" => {:price => 3.00,:clearance => true}},
            {"CHEESE" => {:price => 6.50,:clearance => false}},
            {"BEER" => {:price => 13.00,:clearance => false}},
            {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
            {"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [   {:item=>"AVOCADO", :num=>2, :cost=>5.00},
            {:item=>"BEER", :num=>2, :cost=>20.00},
            {:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generateCart
    cart = []
    rand(20).times do
        cart.push(ITEMS.sample)  
    end
    cart
end

#randomly generates set of coupons
def generateCoups
    coups = []
    rand(4).times do
        coups.push(COUPS.sample)
    end
    coups
end

#counts number of items in cart
def count(cart) #works
    cart.size
end

#counts for multiple items in cart
def multiples(cart) #works
    cart.each do |item|
        item.each do |name, attributes|
            attributes[:count] = cart.select{|each_item| each_item == item}.size
        end
    end
    cart.uniq
end

#check for coupons and apply the discount if the proper number of items is present, returns new total cost
def apply_coupons1(cart, coupons) #works
    cost = 0
    cart.each do |item|
        item.each do |name, attributes|
            coupons.each do |coupon|
                if coupon[:item] == name && attributes[:count] >= coupon[:num] #if name of coupon item equals name of item in cart && number of items needed for coupon >= number of items in cart count
                    cost += coupon[:cost] #add the cost from the discount item to cost
                end
            end
        end
    end
    cost
end

#remove coupon-ed items from the cart, returns new cart
def apply_coupons2(cart, coupons) #works
    cart.each do |item|
        item.each do |name, attributes|
            coupons.each do |coupon|
                if coupon[:item] == name && attributes[:count] >= coupon[:num] #if name of coupon item equals name of item in cart && number of items needed for coupon >= number of items in cart count
                    attributes[:count] = attributes[:count] - coupon[:num] #change number of items in cart
                end
            end
        end
    end
    cart
end

#calculates cost of multiple items. need to pass multiples in.
def cost_of_multiples(cart) #works
    cart.each do |item|
        item.each do |name, attributes|
            attributes[:price] = attributes[:price]*attributes[:count]
        end
    end
    cart
end

#if any of the items are on clearance add a 20% discount
def apply_clearance(cart)
    cart.each do |item|
        item.each do |name, attributes|
            if attributes[:clearance] == true
                attributes[:price] = (attributes[:price]*0.8).round(2)
            end
        end
    end
end

#if the customer has 2 of the same coupon, triple the discount
def triple_discount
    
end

#if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart
def ten_discount(cart, total_cost)
    over_five = false
    cart.each do |item|
        item.each do |name, attributes|
            if attributes[:price] > 5.0
                over_five = true
            end
        end
    end
    if over_five == false && total_cost >= 10
        return total_cost - 10
    end
    total_cost
end

#calculates the total cost of the cart, after calculating cost of multiples
def checkout(cart) #works
    total_cost = []
    cart.each do |item|
        item.each do |name, attributes|
            total_cost << attributes[:price]
        end
    end
    total_cost.reduce(:+)
end

puts "v1"
puts v1_cart = multiples(generateCart)
puts "coups"
puts coups = generateCoups
puts "apply_coupons1"
puts cost = apply_coupons1(v1_cart, coups)
puts "apply_coupons2"
puts cost = apply_coupons2(v1_cart, coups)
puts "cost of multiples"
puts v2_cart = cost_of_multiples(v1_cart)


