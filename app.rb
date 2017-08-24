require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/game_over.rb"

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:home)
  end

  post "/names" do
    @game = Game.create(params[:player1], params[:player2])
    redirect to('/fight')
  end

  get "/play" do
    erb(:play)
  end

  get "/fight" do
    erb(:fight)
  end

  get "/attack" do
    @damage = 50
    @game.play_turn(@game.player1, @game.player2, @damage)
    erb(:attack)
  end

  post "/game_over" do
    session[:game_over] = Game_Over.new(@game.player1, @game.player2)
    redirect to('game_over')
  end

  get "/game_over" do
    @game_over_message = session[:game_over].message
    erb(:game_over)
  end

  run! if app_file == $0
end
