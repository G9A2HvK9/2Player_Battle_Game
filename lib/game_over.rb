class Game_Over

  def message
    "Game Over. #{@winner.player_name} wins!"
  end

  private

  def initialize(player1, player2)
    player1.player_hp <= 0 ? @winner = player2 : @winner = player1
  end

end
