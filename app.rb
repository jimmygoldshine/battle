require 'sinatra/base'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.now
  end

  post '/names' do
    player1 = Player.new(params[:Player1])
    if params[:Player2].empty?
      player2 = Player.new("Computer")
    else
      player2 = Player.new(params[:Player2])
    end
    @game = Game.current_game(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.whos_suffering)
    erb :attack
  end

  get '/computer-attack' do
    @game.attack(@game.whos_suffering)
    erb :computer_attack
  end

  run! if app_file == $0
end
