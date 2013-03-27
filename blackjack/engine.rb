class Deck

    SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]

    VALUES = {"Ace" => 1, "Two" => 2,"Three" => 3, "Four" => 4, "Five" => 5,"Six" => 6,"Seven" => 7,"Eight" => 8, "Nine" => 9,"Ten" => 10,"Jack" => 10,"Queen" => 10,"King"=> 10}

  def initialize
    @cards = []

    SUITS.each do |suit|
      VALUES.each do |name, value|
        @cards << Card.new(name, value, suit)
      end
    end

  end

  def shuffle!
    @cards.shuffle!
  end

  def reset
    self.initialize
  end

  def cards
    @cards
  end

  def print_cards
    @cards.each {|card| puts "#{card.name} #{card.value} #{card.suit}"}
  end

end

class Dealer

  def initialize(deck)
    @deck = deck
  end

    def deal
    @deck.cards.pop(2)
    end

   def dispense_card
      @deck.pop
   end

  def flourish
    puts @deck
  end


end

class Card

  def initialize(name, value, suit)
    @name = name
    @value = value
    @suit = suit
  end

  def value
    @value
  end

def pretty_name
  "#{@name} of #{@suit} (value #{@value})"
  end

end

class Rules

  def deal_players


  end

  def bust

  end

end

class Player

  def initialize(name, dealer)
    @hand = []
    @name = name
    @dealer = dealer

  end

  def get_first_hand
    @hand = @dealer.deal

  end

  def print_hand
    card_pretty_names = []
    card_total = 0
    @hand.each do |card|
      card_pretty_names << card.pretty_name
      card_total += card.value
    end
    puts "#{@name}: My hand is the #{card_pretty_names.join(" and the ")}"
    puts "My total is #{card_total}"

  end

end

class Opponent
end

deck = Deck.new
deck.shuffle!
dealer= Dealer.new(deck)
# card = Card.new
zahid = Player.new("Zahid", dealer)
zahid.get_first_hand

zahid.print_hand