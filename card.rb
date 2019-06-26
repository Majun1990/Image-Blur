class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "Your card is #{self.rank} of #{self.suit}"
  end

end

class Deck
  def initialize
    rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "King", "Queen", "Jack"]
    suit = ["spades", "hearts", "diamonds", "clubs"]
    @deck  = []

    rank.each do |rank|
      suit.each do |suit|
        cards = Card.new(rank, suit)
        @deck << cards
      end
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    @deck.shift(1)
  end

  def output_deck
    @deck.each do |card|
      card.output_card
    end
  end

end

deck = Deck.new
deck.shuffle
deck.deal
deck.output_deck