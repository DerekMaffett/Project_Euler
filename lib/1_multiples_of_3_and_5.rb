class MultiplesSum
  def initialize(criteria_hash)
    @criteria_array = criteria_array
  end

  def analyze(num)
    result = 0
    (1..num).each do |i|
      result += i if divisible_by_criteria(i)
    end
  end

  def divisible_by_criteria(i)
    @criteria_array.each do |crit|
      return true if i % crit == 0
    end
    false
  end
end
