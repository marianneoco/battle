require './lib/game'

describe Game do

  let (:player) { double "game player" }
  let (:player2) { double "second game player" }
  subject(:game) { described_class.new("Player 1", "Player 2")}

  it "retrieves the first player" do
    expect(subject.player1).to eq "Player 1"
  end

  it "retrieves the second player" do
    expect(subject.player2).to eq "Player 2"
  end

  it "shows who's turn it is" do
    expect(subject.turn).to eq "Player 1"
  end

  it "shows who's turn it isn't" do
    expect(subject.not_turn).to eq "Player 2"
  end

  it "can switch turns" do
    subject.switch_turn
    expect(subject.turn).to eq "Player 2"
  end

  it "can switch who's turn it isn't" do
    subject.switch_turn
    expect(subject.not_turn).to eq "Player 1"
  end

  it "hit points should reduce when attacked" do
    allow(player).to receive(:attacked).and_return(true)
    expect(subject.attack(player)).to eq true
  end
end
