# understands how to manage the attributes of a player

class Player

  attr_reader :player_name, :player_hp

  def attack(opponent)
    opponent.reduce_hp
  end

  def reduce_hp
    @player_hp - rand(11)
  end

  def initialize(player_name, player_hp=(rand(21)+80))
    @player_name = player_name
    @player_hp = player_hp
  end

end
