class Card
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(spade heart club diamond)

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def card_name
    "Your card is #{rank} of #{suit}"
  end

  def generate_card(player)
    new_card = Card.new rank, suit
    player.hand << new_card.card_name
  end
  
end

class Person
  attr_accessor :name, :hand

  def initialize(name)
    @name = name
    @hand = []
  end
  
end

class Deck
  attr_accessor :cards, :num

  def initialize
    @cards = []
    @num = num
    
    Card::RANKS.each do |rank|
    Card::SUITS.each do |suit|
      @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle
  end

  def deal(num, player)
    num.times do
      @cards.shuffle.shift.generate_card(player)
    end
  end

end


player1 = Person.new("Ram")
print "\nEnter name of Player 1: "
player1.name = gets.chomp
puts "Player 1 is: #{player1.name}\n"

deck=Deck.new
puts "The hand is: #{ player1.hand << deck.deal(5, player1) }\n"

player2 = Person.new("Shyam")
print "\nEnter name of Player 2: "
player2.name = gets.chomp
puts "Player 2 is: #{player2.name}\n"

deck=Deck.new
puts "The hand is: #{ player2.hand << deck.deal(5, player2) }\n"
