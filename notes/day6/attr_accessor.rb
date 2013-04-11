class Player

  def initialize
    @balance = 100
  end

  def balance(new_balance)
    @balance = new_balance
  end

  def view_balance
    @balance
  end

end

class Player2

  attr_accessor :balance

  def initialize
    # self.balance = 100
    @balance = 120
  end
end



p1 = Player.new
p2 = Player2.new

puts p1.view_balance
p1.balance(40)
puts p1.view_balance

puts p2.balance
p2.balance = 50
puts p2.balance