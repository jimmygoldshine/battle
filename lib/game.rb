require_relative 'player.rb'

class Game

  # def initialize(player1, player2)
  #   @player1 = player1
  #   @player2 = player2
  # end

  def attack(player_name)
    player_name.take_damage
  end

end
