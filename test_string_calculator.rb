# test_string_calculator.rb
require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def setup
    @calculator = StringCalculator.new
  end

  # handle empty string
  def test_empty_string
    assert_equal 0, @calculator.add('')
  end

  # handle 1 number
  def test_one_number_string
    assert_equal 1, @calculator.add('1')
  end

  # handle as many numbers possible
  def test_multiple_number_string
    assert_equal 29, @calculator.add('5,6,3,4,5,6')
  end

  # handle multiple lines
  def test_multiple_line_string
    assert_equal 14, @calculator.add("5
                                      6,3")

    assert_equal 14, @calculator.add("5\n6,3")
  end

  # handle delimiter string
  def test_delimiter_string
    assert_equal 3, @calculator.add("//;
                                      1;2")

    assert_equal 3, @calculator.add("//;\n1;2")
  end

  # handle negative strings
  def test_negative_string
    assert_raises(RuntimeError, "negative numbers not allowed: -1") do
      @calculator.add("//;
                    -1;2")
    end
  end

  # handle numbers greater than 1000
  def test_ignore_numbers
    assert_equal 2, @calculator.add('10000,2')
  end
end
