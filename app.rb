require "sinatra/base"

class Battle < Sinatra::Base
  set :session_secret, "This should keep shotgun in line"
  enable :sessions

  get "/" do
    erb(:index)
    # "player1 =" << session[:player1].inspect
  end

  post "/names" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get "/play" do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  run! if app_file == $0
end
