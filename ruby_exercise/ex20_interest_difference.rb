class Interest
  attr_accessor :principal, :time

  def initialize
    @rate = 0.10
    yield self
  end

  def simple_interest
    si = principal*@rate*time
  end

  def compound_interest
    ci = (principal*((1+@rate)**time) - principal)
  end

  def interest_difference
    print "Interest difference: "
    p (self.compound_interest - self.simple_interest)
  end
end

ob = Interest.new do |i|
  print "Enter principal amount: "
  i.principal = gets.to_f
  print "Enter years: "
  i.time = gets.to_f
end

ob.interest_difference