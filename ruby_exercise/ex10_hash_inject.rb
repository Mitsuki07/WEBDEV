def group_odd_even(arr)
  h = arr.each_with_object(Hash.new { |h,k| h[k]=[]}) do |s,h|
    h[s.size]<<s
  end
  a = h.values

  odd, even = a.partition{ |a| a.first.size.odd?}
  { "odd" => odd, "even" => even }

end

print "Please provide an input: "
arr = []
input = gets.chomp
while input != ''
  arr.push input
  input = gets.chomp
end
p group_odd_even(arr)
