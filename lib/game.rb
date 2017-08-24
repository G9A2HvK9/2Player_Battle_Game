class Game

  attr_reader :player1, :player2, :turn, :game_over

  def play_turn(player1, player2, damage)
    play_attack(player1, player2, damage)
    game_over?(player1, player2)
    increase_turn_count
  end

  private

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @turn = 1
  end

  def play_attack(player1, player2, damage)
    @turn.odd? ? @player1.attack(@player2, damage) : @player2.attack(@player1, damage)
  end

  def game_over?(player1, player2)
    @game_over = (player1.player_hp <= 0 || player2.player_hp <= 0)
  end

  def increase_turn_count
    @turn += 1
  end

end
