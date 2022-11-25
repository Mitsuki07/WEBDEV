def reverse_words(string)
  return string.split(" ").reverse.join(" ")
end

print "Enter a sentence: "
string=gets.chomp
puts reverse_words(string)