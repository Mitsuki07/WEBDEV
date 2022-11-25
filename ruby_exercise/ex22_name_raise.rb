class Name
  attr_accessor :firstname, :lastname
  
  def check_blank
    raise "Empty input error" unless firstname && lastname
  end

  def check_capital
    raise "Firstname not capitalized" unless firstname == firstname.capitalize
  end

  def output
    "Your name is: #{firstname} #{lastname}"
  end
end

name = Name.new 
puts "Enter your name: <Firstname> <Lastname>"
input = gets.chomp.split(/[\s,.]+/)
firstname = input[0]
lastname = input[1]

name.firstname = firstname
name.lastname = lastname
name.check_blank
name.check_capital
puts name.output