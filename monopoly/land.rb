require './tile'

class Land < Tile

  def initialize(available, value, rent, owner, name, can_buy, position)
    @available = available
    @value = value
    @rent = rent
    @owner = owner
    super(name, can_buy, position)
  end

  def available?
    @available
  end

  def value
    @value
  end

  def change_owner(owner)
    @owner = owner
  end


end