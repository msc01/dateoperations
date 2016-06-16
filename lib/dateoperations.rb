require 'date'
require 'holidays'

# Class: DateOperations -- Different date operations, primarily around business days
class DateOperations
  @country = :de

  class << self
    attr_accessor :country
  end

  def self.week_days_between(start_date, end_date)
    week_day_nbrs = (1..5)
    (start_date..end_date).select { |w| week_day_nbrs.include?(w.wday) }
  end

  def self.number_of_week_days_between(start_date, end_date)
    week_days = week_days_between(start_date, end_date)
    week_days.length
  end

  def self.business_days_between(start_date, end_date)
    week_days = week_days_between(start_date, end_date)
    week_days.reject { |b| holiday?(b) }
  end

  def self.number_of_business_days_between(start_date, end_date)
    business_days = business_days_between(start_date, end_date)
    business_days.length
  end

  def self.weekend?(date)
    date.saturday? || date.sunday?
  end

  def self.holiday?(date)
    return false if Holidays.on(date, DateOperations.country, :informal).empty?
    true
  end
end
