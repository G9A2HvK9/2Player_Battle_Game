class Game

  attr_reader :player1, :player2, :turn,

  def self.create(player1, player2)
    @game_instance ||= Game.new(player1, player2)
  end

  def self.instance
    @game_instance
  end

  def increase_turn_count
    @turn += 1
  end

  def game_over
    if @player1.player_hp <= 0
      puts "Player 1 loses!"
    elsif @player2.player_hp <= 0
      puts "Player 2 loses"
    end
  end

  private

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @turn = 1
  end

end
