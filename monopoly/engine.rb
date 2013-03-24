require './property'
require './player'




class Engine

  def initialize
    @players = []
    @properties = []
  end

  def properties
    @properties
  end

  def players
    @players
  end


end

engine = Engine.new

player1 = Player.new(8000,"Douchebag-Sam", 1)
player2 = Player.new(100000000000000000000000001, "Winner-Zahid", 2)
player3 = Player.new(1, "Queen Leopatra", 3)

property1 = Property.new(true, 100, 10, nil, "Sam's Shag Shack, Old Kent Road", true, 1)
property2 = Property.new(true, 500, 50, nil, "Zahid's Penthouse in Mayfair", true, 2)
property3 = Property.new(true, 900, 90, nil, "Leo's Lemon Tree in Whitechapel", true, 3)

engine.properties << property1
engine.properties << property2
engine.properties << property3

engine.players << player1
engine.players << player2

puts engine.properties.map {|x| x.name.to_s}





dice = rand(1...3)
puts dice
#puts player1.position(dice)
#player1.position(dice)

#add player
#add tiles
#add land
#add properties

#order tiles
#order players

#roll dice
#move first player

#player land on tile code
#player position = tile position
#is tile available if yes ask to buy? if no look at rent
#do you have to pay rent? if yes pay rent code
#do you want to buy? if yes initiate buy code.


#buy code
#check player balance is more than property value
#if they do then reduce their funds by the value of the property
#change owner name
#make available to buy to no!
#confirmation message

#pay rent code bitch
#check player balance is more than rent value
#reduce player balance by rent
#increase owner funds by rent value

#check bankrupt
#if one player goes bankrupt other player wins
#move to next player