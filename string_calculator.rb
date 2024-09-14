# string_calculator.rb
class StringCalculator
  def add(string)
    return 0 if string.empty?

    numbers = string.split(%r{,|\n|;|//}).map(&:to_i)
    numbers.sum
  end
end
