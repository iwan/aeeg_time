require 'date'

#cweek è quello buono
Date.class_eval do
  def sweek
    date = self + 1
    date.cweek
  end
end