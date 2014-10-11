# This algorithm returns the sum of numbers below an input number x which are
# divisible by 3 and 5. The solution accepts other arrays of divisibility
# matchers.

class MultiplesSum
  def initialize(criteria_array)
    @criteria_array = criteria_array
  end

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
