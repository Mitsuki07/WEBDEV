class Vehicle
  attr_accessor :name, :price

  def initialize( aName, aPrice )
    @name = aName
    @price = aPrice
  end

  def to_s
    return "(Vehicle.to_s):: '#{@name}' #{@price} "
  end
end
class Bike<Vehicle
  attr_accessor :dealer, :percent_price_increase

  def initialize ( aName, aPrice, aDealer, percentPriceIncrease )
    super(aName, aPrice)
    @dealer = aDealer
    @percent_price_increase = percentPriceIncrease
    
  end

  def show_content
    puts ("#{@name} #{price} #{@dealer} #{@percent_price_increase}")
  end

  def price_increase
    puts ("Bike Name: #{@name} \nBike Price: #{price} \nBike Dealer: #{dealer}\n\n")

    percent_increase = price*percent_price_increase*0.01
    increased_price = price+percent_increase

    puts ("After #{percent_price_increase} percent hike in price: ")
    puts ("Bike Name: #{@name} \nBike Price: #{increased_price} \nBike Dealer: #{dealer}")
  end
end

bike1 = Bike.new('BajajDiscover', 58000, 'BaggalLink', 12)
print("Please provide an input: ")
bike1.name = gets().chomp()
bike1.price = gets().chomp().to_f
bike1.dealer = gets().chomp()
bike1.percent_price_increase = gets().chomp().to_f()

puts(bike1.show_content)
puts(bike1.price_increase)