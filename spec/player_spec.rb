require './lib/player'

describe Player do
  it "should respond to .name with its name" do
    player = Player.new("test")
    expect(player.name).to eq ("test")
  end
end
