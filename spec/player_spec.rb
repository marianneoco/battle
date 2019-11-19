require './lib/player'

describe Player do

  subject(:player1) { Player.new("Player 1") }
  subject(:player2) { Player.new("Player 2") }

  it "should respond to .name with its name" do
    expect(player1.name).to eq ("Player 1")
  end

  it "should be able to display current points" do
    expect(player1.hit_points).to eq 0
  end

  it "hit points should reduce when attacked" do
    expect { player1.attack(player2) }.to change { player2.hit_points }.by(-10)
  end
end
