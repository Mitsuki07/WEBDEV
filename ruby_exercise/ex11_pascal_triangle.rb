def factorial(n)
  return ( if n == 0 or n==1 then 1 else n*factorial(n-1) end)
end

def pascal()
  num = 1
  while num <2
    print "insert a number: "
    num = gets.chomp.to_i
  end

  for y in 0..num

    for x in 0..y

      val = factorial(y)/(factorial(x)*factorial(y-x))

      str = val.to_s

      while str.length < 5
        str+= " "
      end
      
      print str
    end
    puts
  end
end

pascal()