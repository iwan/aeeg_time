# A small gem used to generate AEEG Time Slot

Some useful methods to generate AEEG (The Regulatory Authority for Electricity and Gas) Time Slots used in the Italian electricity market.


## Usage

```ruby
t = AeegTime.parse("2012-01-01 03:00")
t.aeeg_band # => "F3"

# AeegTime inherits from Time Ruby class:
t2 = AeegTime.now
```

You can generate all time bands for a whole year:

```ruby
t = AeegTime.parse("2012-01-01 00:00")
t2 = AeegTime.parse("2013-01-01 00:00")
while (t<t2)
  puts "#{t}: #{t.aeeg_band}"
  t += 3600 # increment t by 1 hour
end
```


Other support methods:

```ruby
t.holiday? # => true
t.easter? # => false
t.easter_monday? # => false
t.hour_in?(0...3) # => false
t.interval # => "03:00 -> 04:00"
t.hour_count # => 4
t.monthday # => "0101"
```
