# it understands how to reduce HP of a player by carrying out an attack

class Attack

  def initialize(player)
    inflict_damage_on(player)
  end

  def inflict_damage_on(player)
    player.player_hp -= 10
  end

end
