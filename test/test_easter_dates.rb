require 'test/unit'
require 'aeeg_time'

class EasterDatesTest < Test::Unit::TestCase

  def test_easter
    t = AeegTime.parse("2012-04-08 08:00")
    assert(t.easter?)
    t = AeegTime.parse("2009-04-12 23:00")
    assert(t.easter?)

    t = AeegTime.parse("2009-04-13 00:00")
    assert(!t.easter?)

    t = AeegTime.parse("2007-04-13 00:00")
    assert_raise RuntimeError do
      t.easter?
    end
  end

  def test_easter_monday
    t = AeegTime.parse("2012-04-09 08:00")
    assert(t.easter_monday?)
    t = AeegTime.parse("2009-04-13 23:00")
    assert(t.easter_monday?)
    t = AeegTime.parse("2009-04-12 00:00")
    assert(!t.easter_monday?)
  end


end
