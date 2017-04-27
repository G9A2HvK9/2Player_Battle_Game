# it understands how to reduce HP of a player by carrying out an attack

class Attack

  # def initialize
  #   @type = type
  # end

  def punch(receiver)
    receiver.player_hp -= 10
  end

  private

  attr_reader :attacker, :type, :receiver

end
