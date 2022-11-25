def fib
  print "Enter a num: "
  num = gets.to_i

  i=0
  j=1

  while i <= num do
    print "#{i}\t"
    i, j = j, i+j
  end
  puts
end

puts fib