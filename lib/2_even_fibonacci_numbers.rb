class Fibonacci
  def initialize
    @fib_memo = { 1 => 0, 2 => 1 }
  end
  # This method is slightly less efficient since it requires an unnecessary
  # array, but it does seem slightly more readable.
  #
  # def sum_of_evens_under(num)
  #   build_fibonacci_array_under(num).inject(0) { |sum, i| i.even? ? sum + i : sum }
  # end

  def sum_of_evens_under(num)
    sum = 0
    n1, n2 = 0, 1
    while n2 < num
      n1, n2 = n2, next_fibonacci(n1, n2)
      sum += n2 if n2.even?
    end
    sum
  end

  def find_fibonacci(num)
    @fib_memo[num] ||= find_fibonacci(num - 2) + find_fibonacci(num - 1)
  end

  # Separate method might not be necessary?
  def next_fibonacci(n1, n2)
    n1 + n2
  end

  def build_fibonacci_array_under(num)
    fib = [0, 1]
    fib[fib.size] = fib[-1] + fib[-2] until fib[-1] > num
    fib.pop
    fib
  end
end
