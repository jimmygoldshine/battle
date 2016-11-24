require 'sinatra/base'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:Player1])
    $p2 = Player.new(params[:Player2])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player1 = $p1.name
    @player2 = $p2.name
    @attack  = session["attack"]
    erb :play
  end

  get '/attack' do
    $game.attack($p2)
    erb :attack
  end


  run! if app_file == $0
end
