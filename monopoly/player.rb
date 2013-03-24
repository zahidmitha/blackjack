class Player

  def initialize(balance, name, order)
    @land_owned = []
    @balance = balance
    @position = 0
    @name = name
    @order = order
  end

  def balance
    @balance
  end

  def land_owned
    @land_owned #.map { |land| land.to_s }
  end

  def name
    @name
  end

  def order
    @order
  end

  def position(p)
    @position << p
  end

  def bankrupt
    puts "bankrupt" unless balance > 0
  end

  def pay(value)
    @balance -= value
  end

  def receive(value)
    @balance += value
  end

  def winner
    puts "I am fucking britny bitch"
  end

end