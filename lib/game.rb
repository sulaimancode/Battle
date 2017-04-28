class Game
  attr_reader :players, :turns

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.load
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turns = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @turns.reverse!
  end

  def player_turn
    @turns.first
  end

  def attack(player)
    player.receive_damage
  end

end
