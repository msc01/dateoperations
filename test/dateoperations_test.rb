#!/usr/bin/env ruby

require_relative 'test_helper'

# Test class for Minitest Unit Tests for class DateOperations
class DateOperationsTest < Minitest::Test
  def test_december_2016_has_22_week_days
    d1 = Date.new(2016, 12, 1)
    d2 = Date.new(2016, 12, -1)
    assert_equal 22, DateOperations.number_of_week_days_between(d1, d2)
  end

  def test_december_2016_has_21_business_days
    d1 = Date.new(2016, 12, 1)
    d2 = Date.new(2016, 12, -1)
    assert_equal 21, DateOperations.number_of_business_days_between(d1, d2)
  end

  def test_november_2016_has_22_business_days
    d1 = Date.new(2016, 11, 1)
    d2 = Date.new(2016, 11, -1)
    assert_equal 22, DateOperations.number_of_business_days_between(d1, d2)
  end

  def test_24th_of_december_2016_is_a_holiday
    assert DateOperations.holiday?(Date.new(2016, 12, 24))
  end

  def test_23th_of_december_2016_is_not_a_holiday
    assert !DateOperations.holiday?(Date.new(2016, 12, 23))
  end

  def test_11th_of_june_2016_is_weekend
    assert DateOperations.weekend?(Date.new(2016, 6, 11))
  end

  def test_10th_of_june_2016_is_not_weekend
    assert !DateOperations.weekend?(Date.new(2016, 6, 10))
  end

  def test_june_2016_has_22_week_days
    d1 = Date.new(2016, 6, 1)
    d2 = Date.new(2016, 6, 30)
    assert_equal 22, DateOperations.number_of_week_days_between(d1, d2)
  end

  def test_startdate_greater_enddate_returns_0_week_days
    d1 = Date.new(2016, 6, 1)
    d2 = Date.new(2016, 6, 30)
    assert_equal 0, DateOperations.number_of_week_days_between(d2, d1)
  end
end
