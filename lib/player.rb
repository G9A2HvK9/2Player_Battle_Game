# understands how to manage the attributes of a player

class Player

  attr_reader :player_name, :player_hp

  def attack(opponent, damage)
    opponent.reduce_hp(damage)
  end

  def reduce_hp(damage)
    @player_hp -= damage
  end

  def initialize(player_name, player_hp=(rand(21)+80))
    @player_name = player_name
    @player_hp = player_hp
  end

end
