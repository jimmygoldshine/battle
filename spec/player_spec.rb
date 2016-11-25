require 'player.rb'

describe Player do

  let(:player1) { described_class.new(p1_name) }
  let(:p1_name) { double(:p1_name) }
  let(:player2) { described_class.new(p2_name)}
  let(:p2_name) { double(:p2_name)}
  let(:damange) { double(:damage) }

  it "will store player name on initialize" do
    expect(player1.name).to eq p1_name
  end

  it "player should start with 100 hitpoints" do
    expect(player1.hitpoints).to eq Player::DEFAULT_HIT_POINTS
  end

  it "hitpoints should decrease by 10 when attacked is run" do
    damage = 10
    expect{player1.take_damage(damage)}.to change{player1.hitpoints}.by(-damage)
  end


end
