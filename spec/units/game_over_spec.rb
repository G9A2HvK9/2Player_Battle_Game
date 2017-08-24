describe Game_Over do

  let(:player1){ Player.new('Player 1', 100) }
  let(:player2){ Player.new('Player 2', 100) }
  let(:game_over){ Game_Over.new(player1, player2) }

  it 'exists' do
    expect(game_over).to be_an_instance_of(Game_Over)
  end

  #Method specs. Checks whether methods fulfill intended function

  describe '#set_message' do
    context 'when Player1 wins' do
      it 'sets the game_over message to declare Player1 the winner' do
        player2.reduce_hp(100)
        game_over_temp = Game_Over.new(player1, player2)
        expect(game_over_temp.message).to eq('Game Over. Player 1 wins!')
      end
    end
  end

  describe '#set_message' do
    context 'when Player2 wins' do
      it 'sets the game_over message to declare Player2 the winner' do
        player1.reduce_hp(100)
        game_over_temp = Game_Over.new(player1, player2)
        expect(game_over_temp.message).to eq('Game Over. Player 2 wins!')
      end
    end
  end


end
