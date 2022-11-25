# arr = %w(abc def 1234 234 abcd x mnop 5 zZzZ)

def arr_hash(arr)
  arr = arr.sort_by(&:length)
  h = Hash.new{ |h,k| h[k] = []}
  arr.each { |e| h[e.size] << e}
  p h
end

print "Please provide an input: "
arr = []
input = gets.chomp
while input != ''
  arr.push input
  input = gets.chomp
end
arr_hash(arr)
