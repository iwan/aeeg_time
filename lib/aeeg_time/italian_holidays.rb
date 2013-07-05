require_relative 'easter_dates'

module ItalianHolidays
  include EasterDates

  module InstanceMethods

    def national_holiday?
      national_holidays = %w(0101 0106 0425 0501 0602 0815 1101 1208 1225 1226) # for italy
      return true if national_holidays.include? monthday

      easters = {2009 => "0412", 2010 => "0404", 2011 => "0424", 2012 => "0408", 2013 => "0331", 2014 => "0420", 2015 => "0405", 2016 => "0327", 2017 => "0416", 2018 => "0401", 2019 => "0421", 2020 => "0412"}
      return true if easter_monday?
      false
    end
  end
  
  def self.included(receiver)
    receiver.send :include, InstanceMethods
  end
end