require_relative 'player.rb'

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player_name)
    if player_name == @player1
      @player2.take_damage
    else
      @player1.take_damage
    end
  end

end
