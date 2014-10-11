# This algorithm returns the sum of numbers below an input number x which are
# divisible by 3 and 5. The solution accepts other arrays of divisibility
# matchers.

class MultiplesSum
  def initialize(criteria_array)
    @criteria_array = criteria_array
  end

  # This would appear to be the fastest method
  # def analyze(num)
  #   result = 0
  #   (1...num).each do |i|
      # result += i if divisible_by_criteria?(i)
  #   end
  #   result
  # end

  # This solution looks nicer, but returns an unnecessary array with the
  # select method.
  # def analyze(num)
    # (1...num).select { |i| divisible_by_criteria?(i) }.reduce(&:+)
  # end

  def analyze(num)
    (1...num).inject(0) { |sum, i| divisible_by_criteria?(i) ? sum + i : sum }
  end

  def divisible_by_criteria?(i)
    @criteria_array.each do |crit|
      return true if i % crit == 0
    end
    false
  end
end
