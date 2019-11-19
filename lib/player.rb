class Player

  def initialize(name)
    @name = name
    @hit_points = 0
  end

  def attack(player)
    player.attacked
  end

  def attacked
    @hit_points -= 10
  end

  attr_reader :name, :hit_points

end
