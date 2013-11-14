require_relative 'number-guesser'

describe Numberguesser, "" do

  it  "should return true if the number is equal to 5" do
    5.is_equal_to?(number).should eq(true)
  end

  it "should return false if the number is not equal to 5" do
    5.is_equal_to?(number).should eq(false)
  end

end