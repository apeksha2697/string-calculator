# string_calculator.rb
class StringCalculator
  def add(string)
    return 0 if string.empty?

    numbers = string.split(%r{,|\n|;|//|\*}).map(&:to_i)

    # Find all negative numbers
    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise "negatives not allowed: #{negatives.join(', ')}"
    end

    # Ignore numbers greater than 1000
    numbers = numbers.select { |n| n <= 1000 }

    numbers.sum
  end
end
