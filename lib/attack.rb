# it understands how to reduce HP of a player by carrying out an attack

class Attack

  def initialize
    @player1 = $player1
    @player2 = $player2
  end

  def attack_player1(receiver = @player1)
    receiver.player_hp -= 10
  end

  def attack_player2(type, receiver = @player2)
    receiver.player_hp -= 10
  end

  private

  attr_reader :attacker, :type, :receiver

end
