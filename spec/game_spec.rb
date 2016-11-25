require 'game.rb'

describe Game do

  let(:game) { described_class.new(player1, player2)}
  let(:player1) { double (:player1) }
  let(:p1_name) { double(:p1_name) }
  let(:player2) { double(:player2) }
  let(:p2_name) { double(:p2_name) }

  it "player should recieve method take damage" do
    expect(player2).to receive(:take_damage)
    game.attack(player2)
  end

  it "should initialize to player1's turn" do
    expect(game.whos_attacking).to eq player1
  end

  it "should be player2's turn after player 1 has attacked" do
    allow(player2).to receive(:take_damage)
    game.attack(player2)
    expect(game.whos_attacking).to eq player2
  end

  context "random damage" do

    it "should return a number between 1 and 10" do
      expect(game.random_number).to be_kind_of(Integer)
    end


    # it "should take random number off p2's hitpoints" do
    #   game.attack(player2)
    #   expect(player2.take).to eq 5
    # end
  end

end
