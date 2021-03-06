require './lib/player'

describe Player do

  subject(:player1) { Player.new("Player 1") }
  subject(:player2) { Player.new("Player 2") }

  it "should respond to .name with its name" do
    expect(player1.name).to eq ("Player 1")
  end

  it "should be able to display current points" do
    expect(player1.hit_points).to eq 50
  end

  it "should reduce hit points when attacked" do
    allow(Kernel).to receive(:rand).and_return(10)
    expect { player1.attacked }.to change { player1.hit_points }.by (-10)
  end
end
