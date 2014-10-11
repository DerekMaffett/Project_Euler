require 'spec_helper'
require '1_multiples_of_3_and_5'

describe MultiplesSum do
  it 'should return appropriate sum for 5' do
    MultiplesSum.new([3, 5]).analyze(5).must_equal 3
  end

  it 'should return appropriate sum for 10' do
    MultiplesSum.new([3, 5]).analyze(10).must_equal 23
  end

  it 'should return appropriate sum for 15' do
    MultiplesSum.new([3, 5]).analyze(15).must_equal 45
  end
end
