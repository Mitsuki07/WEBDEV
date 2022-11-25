class Thing
  attr_accessor :str

  def initialize( aString )
    @str = aString
  end

  def to_s
    str.chars.map { |s| s.upcase == s ? s.downcase : s.upcase }.join
  end
end

ob = Thing.new("bRuH")

print("Please provide an input: ")
ob.str = gets.chomp
puts "#{ob.to_s}"
