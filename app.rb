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
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack-result' do
    @game = $game
    @game.attack(@game.player2)
    erb :attack
  end

  post '/attack-again' do
    @game = $game
    @game.attack(@game.player1)
    erb :again
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
