require './lib/computer'

describe Computer do

  it 'inherits from Player' do
    expect(described_class).to be < Player
  end
  
end
