require 'spec_helper'
require '2_even_fibonacci_numbers'

describe Fibonacci do
  it 'should return a sum of even fibonacci numbers under 10' do
    Fibonacci.new.sum_of_evens_under(10).must_equal 10
  end
  it 'should return a sum of even fibonacci numbers under 10' do
    Fibonacci.new.sum_of_evens_under(50).must_equal 44
  end
  it 'should return an accurate fibonacci array' do
    Fibonacci.new.build_fibonacci_array_under(8).must_equal [0, 1, 1, 2, 3, 5, 8]
  end
end
