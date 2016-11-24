class Player

  attr_reader :hitpoints, :name

  DEFAULT_HIT_POINTS = 100

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HIT_POINTS
  end

  def take_damage
    @hitpoints -= 10
  end

  def attack(player_name)
    player_name.take_damage
  end

end
