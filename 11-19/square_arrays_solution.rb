# Instructions:
# Return an array that contains the squares of all elements in an array?

def square_array(some_array)
  some_array.collect do |num|
  	num**2
  end
end

# puts square_array([1,4,5,7])