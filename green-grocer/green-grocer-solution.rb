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
    rand(2).times do
        coups.push(COUPS.sample)
    end
    coups
end

#counts for multiple items in cart
def multiples(cart)
    cart.each do |item|
        item.each do |name, attributes|
            attributes[:count] = cart.select{|other_item| other_item == item}.size
        end
    end
    cart.uniq
end

#calculates the total cost of the cart
def checkout(cart)
    total_cost = []
    cart.each do |item|
        item.each do |name, attributes|
            total_cost << attributes[:price]
        end
    end
    total_cost.reduce(:+)
end

#when checking out, check the coupons and apply the discount if the proper number of items is present
def check_for_coupons(cart, coupons)
    cart.each do |item|
        item.each do |name, attributes|
            if name == #if name of produce equals name of coupon item, then...
                #not sure what to do here.. i want to use name and attributes...
                #later down in this method but.. how to make the two iterations meet?
            end
        end
    end
    coupons.each do |key, value|
        if value == name #if name of coupon item equals 
            if key[:num] >= attributes[:count] #if number of items needed for coupon >= number of items in cart count...
                attributes[:price] = key[cost] #apply the discount by replacing price with the discount  
            end
        end
    end
end
#to iterate over two arrays, do i need to use .zip? http://ruby-doc.org/core-2.0.0/Enumerable.html#method-i-zip

#if any of the items are on clearance add a 20% discount
def check_for_clearance(cart)
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
    #couldn't ever happen with the code b/c COUP uses rand(2) which only returns 0 1 ... yes?
end

#if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart
def ten_discount(cart, total_cost)
    new_cost = 0
    cart.each do |item|
        item.each do |name, attributes|
            if attributes[:price] > 5
                break
            else
                new_cost = total_cost - 10
            end
        end
    end
    new_cost
end

def make_a_sale
    generateCart
    generateCoups
    multiples
    check_for_coupons
    check_for_clearance
    checkout
    ten_discount
end

# this code below didn't work: for some reason it kept removing SIXTY (60) from total cost instead of just ten.. even when i changed
#10 to 1, it still removed a number by the multiple of SIX(6). wassupwiddat?
# def ten_discount(cart, total_cost)
#     cart.each do |item|
#         item.each do |name, attributes|
#             if attributes[:price] > 5
#                 break
#             else
#                 total_cost = total_cost - 10
#             end
#         end
#     end
#     total_cost
# end


