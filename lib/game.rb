require_relative 'player.rb'

class Game

  attr_reader :player1, :player2, :whos_attacking, :whos_suffering

  @current_game

  def self.current_game(player1, player2)
    @current_game = Game.new(player1, player2)
  end

  def self.now
    @current_game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @whos_attacking = player1
    @whos_suffering = player2
  end

  def attack(player_name)
    player_name.take_damage
    switch_turn
  end

  def switch_turn
    if @whos_attacking == @player1
      @whos_attacking = @player2
      @whos_suffering = @player1
    else
      @whos_attacking = @player1
      @whos_suffering = @player2
    end
  end

end
