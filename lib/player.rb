class Player
  attr_reader :name,:hitpoints

  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HP
  end

  def receive_damage
    @hitpoints -= 10
  end
end
