describe Game do

  let(:game){ Game.new('Name 1', 'Name 2') }

  #Set up conditions. Check that Game has correct framing conditions

  it 'exists' do
    expect(game).to be_an_instance_of(Game)
  end

  it 'instantiates with 3 attributes - Player 1, Player 2 and turn' do
    expect(game).to have_attributes( :player1 => an_instance_of(Player), :player2 => an_instance_of(Player), :turn => 1 )
  end

  #Method testing. Checks that all methods work as intended

  describe '#increase_turn_count' do

    it 'takes 2 arguments' do
      expect(game).to respond_to(:play_turn).with(3).arguments
    end

    it 'increases the turn count by 1 when called' do
      expect{ game.play_turn(game.player1, game.player2, 10) }.to change{ game.turn }.by(1)
    end

    context 'when Player1 attacks Player2 and deals 10 damage' do
      it 'reduces Player2\'s player_hp by 10' do
        expect{ game.play_turn(game.player1, game.player2, 10) }.to change{ game.player2.player_hp }.by( -10 )
      end
    end

    context 'when Player2 attacks Player1 and deals 10 damage' do
      it 'reduces Player2\'s player_hp by 10' do
        game.play_turn(game.player1, game.player2, 0)
        expect{ game.play_turn(game.player1, game.player2, 10) }.to change{ game.player1.player_hp }.by( -10 )
      end
    end

    context 'when Player1 runs out of player_hp' do
      it 'sets the game_over status to true' do
        expect{ game.play_turn(game.player1, game.player2, 100) }.to change{ game.game_over }.to(true)
      end
    end

    context 'when Player2 runs out of player_hp' do
      it 'sets the game_over status to true' do
        game.play_turn(game.player1, game.player2, 0)
        expect{ game.play_turn(game.player1, game.player2, 100) }.to change{ game.game_over }.to(true)
      end
    end
  end
end
