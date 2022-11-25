class Item 
	attr_accessor :name, :is_imported, :tax_exempted, :price
	
	def initialize(name, is_imported, tax_exempted, price)
		@name = name
		@is_imported = is_imported
		@tax_exempted = tax_exempted
		@price = price
		@sales_tax = 0
	end	
	
	def sales_tax
		if @tax_exempted == false && @is_imported == true
			@sales_tax = @price*0.10 + @price*0.05
			
		elsif @tax_exempted == true && @is_imported == false
			@sales_tax = 0
			
		elsif @tax_exempted == true && @is_imported == true
			@sales_tax = @price*0.05
		else
			@sales_tax = @price*0.10
		end	
	end
	
	def total
	  price + sales_tax
	end
	
	def self.generate_item		
		print "Name of the product: "
			name = gets.chomp
		print "Imported?(true/false): "
			is_imported = gets.chomp
		print "Exempted from sales tax(true/false): "
			tax_exempted = gets.chomp
		print "Price: "
			price = gets.to_i
			
		Item.new(name, is_imported, tax_exempted, price)
	end
end

items = []
loop do
	items << Item.generate_item
	print "Do you want to add more items to your list(y/n):  "
	input = gets.downcase.chomp
break if input!='y'
end

items.each_with_index do |item|
  line_width = 32
  print "name of product:".ljust(line_width/2)
  puts "#{item.name}".rjust(line_width/2)
  print "imported?:".ljust(line_width/2)
  puts "#{item.is_imported}".rjust(line_width/2)
  print "tax exempted?:".ljust(line_width/2)
  puts "#{item.tax_exempted}".rjust(line_width/2)
  print "price:".ljust(line_width/2)
  puts "#{item.price}".rjust(line_width/2)
  print "sales_tax:".ljust(line_width/2)
  puts "#{item.sales_tax}".rjust(line_width/2)
  print "total:".ljust(line_width/2)
  puts "#{item.total}".rjust(line_width/2)
  print "\n"
end
