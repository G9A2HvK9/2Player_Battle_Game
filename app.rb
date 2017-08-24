require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"

class Battle < Sinatra::Base

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

  get "/game_over" do
    erb(:game_over)
  end

  run! if app_file == $0
end
