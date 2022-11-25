def count_occurence
  print "please enter a string: "
  str = gets.chomp
  
  hash = Hash.new(0)

  str.each_char do |s|
    hash[s]+=1
  end
  hash
end

puts count_occurence