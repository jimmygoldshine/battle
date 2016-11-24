require 'game.rb'

describe Game do

  let(:game) { described_class.new(player1, player2)}
  let(:player1) { double (:player1) }
  let(:p1_name) { double(:p1_name) }
  let(:player2) { double(:player2) }
  let(:p2_name) { double(:p2_name) }
  #
  # it "hitpoints should decrease other player's HP by 10 when attacked" do
  #   allow(player2).to receive(:take_damage).and_return(-10)
  #   expect(game.attack(player1)).to eq -10
  # end

  it "player should recieve method take damage" do
    expect(player2).to receive(:take_damage)
    game.attack(player2)
  end


end
