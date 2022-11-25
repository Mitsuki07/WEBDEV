def replace
  print "please enter a string: "
  str = gets.chomp
  vowels = /[aeiou]/
  
  str.gsub(vowels, '*')
end

puts replace