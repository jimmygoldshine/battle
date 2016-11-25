class Player

  attr_reader :hitpoints, :name

  DEFAULT_HIT_POINTS = 20

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HIT_POINTS
  end

  def take_damage(damage)
    @hitpoints -= damage
  end

end
