def power
  i=5
  a=[]
  while i>0
    print "Enter number: "
    num = gets.chomp.to_i
    a.push(num)
    i = i-1
  end
  print "#{a}\n"
  
  print("enter value of power to raise: ")
    x = gets.chomp.to_i
    a.map! { |j| j**x }
    p a
end

power