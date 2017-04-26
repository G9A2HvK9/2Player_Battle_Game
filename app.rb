require "sinatra/base"

class Battle < Sinatra::Base
  set :session_secret, "This should make sessions work in shotgun"
  enable :sessions

  get "/" do
    erb(:index)
    # "player1 =" << session[:player1].inspect
  end

  post "/names" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:hp_player1] = rand(21)+80
    session[:hp_player2] = rand(21)+80
    redirect to('/play')
  end

  get "/play" do
    @player1 = session[:player1]
    @hp_player1 = session[:hp_player1]
    @player2 = session[:player2]
    @hp_player2 = session[:hp_player2]
    erb(:play)
  end

  get "/fight" do
    @player1 = session[:player1]
    @hp_player1 = session[:hp_player1]
    @player2 = session[:player2]
    @hp_player2 = session[:hp_player2]
    erb(:fight)
  end

  run! if app_file == $0
end
