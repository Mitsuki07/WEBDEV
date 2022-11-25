def fact(n)
  raise "negative number entered" if n<0
  (2..n).reduce(1,:*)
end

print "Enter a number: "
n = gets.chomp.to_i
puts "Factorial of #{n}: #{fact(n)}"