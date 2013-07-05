require 'test/unit'
require 'aeeg_time'

class TimeTest < Test::Unit::TestCase

  def test_monthday
    t = AeegTime.parse("2012-01-08 08:00")
    assert_equal("0108", t.monthday)
  end

  def test_to_date
    t = AeegTime.now
    assert_equal(Date.today, t.to_date)
  end

  def test_method_missing
    t = AeegTime.now
    assert_nothing_raised do
      t.cweek
    end
    assert_raise NoMethodError do
      t.inexistent_method
    end
  end
end