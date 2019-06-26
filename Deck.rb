class Deck
  def initialize
    @rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "King", "Queen", "Jack"]
    @suit = ["spades", "hearts", "diamonds", "clubs"]
    @cards  = []

    @rank.each do |rank|
      @suit.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end
end

  deck = Deck.new
  puts deck