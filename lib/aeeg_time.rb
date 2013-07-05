require_relative 'aeeg_time/energy_time'
require_relative 'aeeg_time/italian_holidays'

# reminder: irb -Ilib -raeeg_time



class AeegTime < EnergyTime
  include ItalianHolidays

  # def +(seconds)
  #   (super.+(seconds)).to_aeeg
  # end

  # Fascie orarie definite nell'Allegato A, tabella 6, deliberazione 301/12
  def aeeg_band(return_a_number=false)
    n = case
    when holiday?
      3
    when !saturday? && hour_in?(8...19)
      1
    when saturday? && hour_in?(7...23)
      2
    when !saturday? && hour_in?(7...23)
      2
    else
      3
    end
    return_a_number ? n : "F#{n}"
  end
end