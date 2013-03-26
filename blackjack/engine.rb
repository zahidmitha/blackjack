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

  def shuffle
    @cards.shuffle
  end

end

class Dealer

   def dispense_card
      @cards.pop
   end

  def flourish
    puts @cards
  end

  def deal
    @cards.pop(2)
  end


end

class Card

  def initialize(name, value, suit)
    @name = name
    @value = value
    @suit = suit
  end

  def name
    @name
  end

  def value
    @value
  end

  def suit
    @suit
  end

  def to_s
    "#{@name} of #{@suit}"
  end

end

class Rules

  def bust

  end

end

class Player

  def initialize
  # Help!
  $player_cards = []
  end



  def pick(card)



    @total = 0

    @total += card

    puts "You picked #{card}"
    puts "Your total is #{@total}"

  $player_cards << card

  end


end

class Opponent

  def view_cards
    # Why do smaller scope variables not work here?
    $cards.sample(2)

  end


  # Help!
  $opponent_cards = []

  def pick(card)

    @total = 0

    @total += card

    puts "Your opponent picked two cards."

  end

  def add_deck

  $opponent_cards << card

  end
end


deck = Deck.new
deck.shuffle!
puts deck.dispense_card

