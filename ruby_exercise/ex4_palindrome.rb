class String
  attr_accessor :str

  def initialize
    @str
  end

  def palindrome(str)
    loop do
      if str.empty?
        print "please provide an input: "
        str = gets.chomp
      elsif str.reverse == str
        puts "input string is a palindrome"
        break
      else
        puts "input string is not a palindrome"
        break
      end
    end
  end
end

print "Enter a string: "
str=gets.chomp
word = String.new()
word.palindrome(str)
