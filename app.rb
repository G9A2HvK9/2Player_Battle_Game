require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/game_over.rb"

class Battle < Sinatra::Base
  enable :sessions

  before do
    request.path_info.sub! %r{/$}, ''
  end

  post "/" do
    session.clear
    redirect to("/")
  end

  get "/" do
    session.clear
    erb(:home)
  end

  post "/fight" do
    session[:game] = Game.new(params[:player1], params[:player2])
    redirect to('/fight')
  end

  get "/fight" do
    check_for_session
    @game = session[:game]
    erb(:fight)
  end

  get "/attack" do
    check_for_session
    @game = session[:game]
    @damage = 50
    @game.play_turn(@game.player1, @game.player2, @damage)
    erb(:attack)
  end

  post "/game_over" do
    check_for_session
    session[:game_over] = Game_Over.new(session[:game].player1, session[:game].player2)
    redirect to('game_over')
  end

  get "/game_over" do
    check_for_session
    @game_over = session[:game_over]
    erb(:game_over)
  end

  run! if app_file == $0

  private

  def check_for_session
    unless session[:game]
      redirect to ('/')
    end
  end

end
