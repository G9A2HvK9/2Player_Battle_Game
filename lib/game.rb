class Game

  attr_reader :turn, :player1, :player2, :damage

  def initialize(player1, player2)
    @turn = 1
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def self.create(player1, player2)
    @game_instance ||= Game.new(player1, player2)
  end

  def self.instance
    @game_instance
  end

  def cycle
    if @turn.odd?
      inflict_damage_on(@player1)
      @turn +=1
    elsif @turn.even?
      inflict_damage_on(@player2)
      @turn +=1
    end
  end

  def game_over
    if @player1.player_hp <= 0
      puts "Player 1 loses!"
    elsif @player2.player_hp <= 0
      puts "Player 2 loses"
    end
  end

  def inflict_damage_on(player)
    @damage = rand(11)
    player.player_hp -= @damage
  end

end
