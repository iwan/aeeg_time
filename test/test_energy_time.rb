require 'test/unit'
require 'aeeg_time'

class EnergyTimeTest < Test::Unit::TestCase

  def test_may_1st_is_holiday
    t = AeegTime.parse("2012-05-01 08:00")
    assert(t.holiday?)
  end

  def test_may_6th_is_sunday
    t = AeegTime.parse("2012-05-06 08:00")
    assert(t.sunday?)
    assert(t.holiday?)
  end

  def test_hour_in
    t = AeegTime.parse("2012-05-06 08:00")
    assert(!t.hour_in?(1..7))
    assert(t.hour_in?(1..8))
    assert(t.hour_in?([8,9,10]))
    assert(!t.hour_in?(1...8))
    assert(t.hour_in?(8..12))
    assert(t.hour_in?(1...12))
  end

  def test_interval
    t = AeegTime.parse("2012-05-06 08:00")
    assert_equal("08:00 -> 09:00", t.interval)
  end

  def test_hour_count
    t = AeegTime.parse("2012-05-06 08:00")
    assert_equal(9, t.hour_count)
  end

end