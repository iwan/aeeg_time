module EasterDates

  # year => "mmdd" hash of easters
  EASTERS = {2009 => "0412", 2010 => "0404", 2011 => "0424", 2012 => "0408", 2013 => "0331", 2014 => "0420", 2015 => "0405", 2016 => "0327", 2017 => "0416", 2018 => "0401", 2019 => "0421", 2020 => "0412"}

  module InstanceMethods
    def easter_mm_dd(year)
      raise "No easter date for year=#{year}" if !EASTERS.has_key? year
      EASTERS[year]
    end

    def easter?
      easter_mm_dd(year)==monthday
    end

    def easter_monday?
      easter_mm_dd(year)==(self-(24*60*60)).monthday
    end
  end
  
  def self.included(receiver)
    receiver.send :include, InstanceMethods
  end
end