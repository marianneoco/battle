require 'sinatra'

require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = params[:player_1_name]
    $player_2_name = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack-result' do
    @player_1 = Player.new($player_1_name)
    @player_2 = Player.new($player_2_name)
    @new_player_2_score = @player_2.attacked
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
