# test_string_calculator.rb
require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def setup
    @calculator = StringCalculator.new
  end

  def test_empty_string
    assert_equal 0, @calculator.add('')
  end

  def test_one_number_string
    assert_equal 1, @calculator.add('1')
  end

  def test_two_number_string
    assert_equal 11, @calculator.add('5,6')
  end 
end
