require 'player.rb'

describe Player do

  let(:player) { described_class.new(p1_name) }
  let(:p1_name) { double(:p1_name) }

  it "will store player name on initialize" do
    p1 = player
    expect(p1.name).to eq p1_name
  end
end
