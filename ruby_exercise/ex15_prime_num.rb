num = gets.to_i
prime_array = []

(1..num).each do |num|
  if (1..num).select { |d| num%d == 0 } == [1,num]
    prime_array.push(num)
  end
end

p prime_array