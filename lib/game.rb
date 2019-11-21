class Game

  attr_reader :player1, :player2, :turn, :not_turn

  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @turn = @player1
      @not_turn = @player2
  end

  def self.new_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def switch_turn
    if @turn == player1
      @turn = @player2
      @not_turn = @player1
    else
      @turn = @player1
      @not_turn = @player2
    end
  end

  def attack(player)
    player.attacked
  end

  def paralyse?
    rand(1..2) == 1 ? true : false
  end

  def poison?
    rand(1..10) == 1? true : false
  end

end
