class Player

  DEFAULT_STARTING_POINTS = 50

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_STARTING_POINTS
  end

  def attacked
    @hit_points -= Kernel.rand(1..15)
  end

  attr_reader :name, :hit_points

end
