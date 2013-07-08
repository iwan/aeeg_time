require 'time'

Time.class_eval do
  def to_date
    ::Date.new(year, month, day)
  end

  def monthday
    strftime("%m%d")
  end

  def method_missing(sym, *args, &block)
    return self.to_date.send(sym, *args, &block) if self.to_date.respond_to?(sym)
    super(sym, *args, &block)
  end
end
