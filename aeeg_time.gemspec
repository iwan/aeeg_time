Gem::Specification.new do |s|
  s.name        = 'aeeg_time'
  s.version     = '0.0.2'
  s.date        = '2013-07-05'
  s.summary     = "A small gem used to generate AEEG Time Slot"
  s.description = "This is a small gem that extend the Time class to introduce a method to generate electricity market time slot used by The Italian Regulatory Authority for Electricity and Gas (AEEG) and other support methods."
  s.authors     = ["Iwan Buetti"]
  s.email       = 'iwan.buetti@gmail.com'
  s.files       = `git ls-files app lib`.split("\n")
  s.homepage    = 'https://github.com/iwan/aeeg_time'
end
