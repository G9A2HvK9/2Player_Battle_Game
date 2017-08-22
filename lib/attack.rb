# it understands how to reduce HP of a player by carrying out an attack

class Attack

  def initialize(player)
    inflict_damage_on(player)
  end

  def inflict_damage_on(player)
    @damage = rand(11)
    player.player_hp -= @damage
  end

  attr_reader :damage

end
