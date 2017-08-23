require "sinatra/base"
require "./lib/player.rb"
require "./lib/attack.rb"
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
    @damage = rand(11)
    @game.turn.odd? ? @game.player1.attack(@game.player2, @damage) : @game.player2.attack(@game.player1, @damage)
    @game.increase_turn_count
    erb(:attack)
  end

  get "/gameover" do
    erb(:gameover)
  end

  run! if app_file == $0
end
