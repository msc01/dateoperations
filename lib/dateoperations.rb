# frozen_string_literal: true

require 'date'
require 'holidays'
require_relative 'dateoperations/version'

##
# Different date operations, primarily around business days, based on the Holidays[https://github.com/holidays/holidays] Gem.
# - Home[https://codeberg.org/msc01/dateoperations]
# - Documentation[http://dateoperations.schwarze-web.de/DateOperations.html]
class DateOperations
  @country = :de

  class << self
    # Switches to the calendar of the respective country:
    # - :de = Germany
    # - :us = USA
    # - ...
    attr_accessor :country
  end

  # Returns an array with dates for the week days (Monday to Friday) between a given start and end date.
  def self.week_days_between(start_date, end_date)
    week_day_nbrs = (1..5)
    (start_date..end_date).select { |w| week_day_nbrs.include?(w.wday) }
  end

  # returns the number of week days (Monday to Friday) between a given start and end date.
  def self.number_of_week_days_between(start_date, end_date)
    week_days = week_days_between(start_date, end_date)
    week_days.length
  end

  # Returns an array with dates for the business days (week days (Monday to Friday) without holidays).
  # between a given start and end date.
  def self.business_days_between(start_date, end_date)
    week_days = week_days_between(start_date, end_date)
    week_days.reject { |b| holiday?(b) }
  end

  # Returns the number of business days (week days (Monday to Friday) without holidays).
  # between a given start and end date.
  def self.number_of_business_days_between(start_date, end_date)
    business_days = business_days_between(start_date, end_date)
    business_days.length
  end

  # Checks whether a given date is a weekend (Saturday, Sunday).
  def self.weekend?(date)
    date.saturday? || date.sunday?
  end

  # Checks whether a given date is a holiday based on the calendar for the respective country.
  def self.holiday?(date)
    Holidays.on(date, DateOperations.country, :informal).any?
  end
end
