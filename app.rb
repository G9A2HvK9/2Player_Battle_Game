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
    @game.cycle
    erb(:attack)
  end

  get "/gameover" do
    erb(:gameover)
  end

  run! if app_file == $0
end
