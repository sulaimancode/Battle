require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
# enable :sessions
set :session_secret, "Here be Dragons"

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    # $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.load
    erb(:play)
  end

  get '/attacked' do
    @game = Game.load
    @game.switch_turns
    @game.attack(@game.player_turn)
    erb(:attack)
  end

  run! if app_file == $0
end
