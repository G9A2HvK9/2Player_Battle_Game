class Game
  require "./app.rb"

  def initialize
    @turn = 1
  end

  def cycle
    if @turn.odd?
      attack($player1)
      @turn +=1
    elsif @turn.even?
      attack($player2)
      @turn +=1
    end
  end

  def attack(player)
    Attack.new(player)
  end

  attr_reader :turn

end
