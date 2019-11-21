require 'sinatra'

require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = Player.new(params[:player_1_name])
    @player2 = Player.new(params[:player_2_name])
    @game = Game.new_game(@player1, @player2)
    redirect '/play'
  end

  before do
    @game = Game.current_game
  end

  get '/play' do
    erb :play
  end

  post '/attack-result' do
    @game.attack(@game.not_turn)
    erb :attack
  end

  post '/continue' do
    @game.switch_turn
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
