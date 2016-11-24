require 'sinatra/base'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:Player1])
    @player2 = Player.new(params[:Player2])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    erb :play
  end

  get '/attack' do
    $game.attack($game.player2)
    erb :attack
  end


  run! if app_file == $0
end
