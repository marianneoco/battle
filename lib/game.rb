class Game

  attr_reader :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = @player1
  end

  def switch_turn
    @turn = @player2
  end

  def attack(player)
    player.attacked
  end

end
