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
  def test_two_number_string
    assert_equal 29, @calculator.add('5,6,3,4,5,6')
  end 
end
