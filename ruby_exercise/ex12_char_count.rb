class String
  def character_count
    uppercase_count = 0
    lowercase_count = 0
    digit_count = 0
    uppercase_range = Range.new('A', 'Z')
    lowercase_range = Range.new('a', 'z')
    digit_range = Range.new('0', '9')
    special_character_count = 0
    each_char do |item|
      case item
      when uppercase_range
        uppercase_count += 1
      when lowercase_range
        lowercase_count += 1
      when digit_range
        digit_count += 1
      else
        special_character_count += 1
      end
    end
    [lowercase_count, uppercase_count, digit_count, special_character_count]
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  string = ARGV[0]
  count_array = string.character_count
  puts "Lowercase characters = #{count_array[0]}"
  puts "Uppercase characters = #{count_array[1]}"
  puts "Numeric characters = #{count_array[2]}"
  puts "Special characters = #{count_array[3]}"
end
