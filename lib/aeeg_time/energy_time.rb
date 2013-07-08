require_relative 'core_ext/time'
require_relative 'core_ext/date'

class EnergyTime < Time
  
  def holiday?
    sunday? || national_holiday?
  end

  def +(seconds)
    self.class.at(super(seconds))
  end

  # collection must be a Range or an Array
  def hour_in?(collection)
    collection.include?(self.hour)
  end

  def interval
    "#{strftime('%H:00')} -> #{(self+3600).strftime('%H:00')}"
  end

  # 
  def hour_count
    hour+1
  end
  
end