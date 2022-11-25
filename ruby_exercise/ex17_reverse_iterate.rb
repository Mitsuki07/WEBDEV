def reverse_iterate
  print "Enter numbers for array, enter blank to stop: "
  arr = []
  input = gets.chomp
  while input != ''
  	arr.push input
  	input = gets.chomp
  end
  
  print arr.reverse
end

puts reverse_iterate
