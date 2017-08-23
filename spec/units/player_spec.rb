describe Player do

  let(:player){ Player.new('Player', 100) }
  let(:opponent){ Player.new('Opponent', 100) }

  #Set up conditions. Check that Game has correct framing conditions

  it 'exists' do
    expect(player).to be_an_instance_of(Player)
  end

  it 'instantiates with 2 attributes - player_name and player_hp' do
    expect(player).to have_attributes( :player_name => 'Player', :player_hp => 100)
  end

  #Method testing. Checks that all methods work as intended

  describe '#attack' do
    it 'takes 2 arguments' do
      expect(player).to respond_to(:attack).with(2).arguments
    end

    context 'when Player attacks an opponent and deals damage of 10 HP' do
      it 'reduces the opponents player_hp by 10' do
        expect{ player.attack(opponent, 10) }.to change{ opponent.player_hp }.by(-10)
      end
    end
  end

  describe '#reduce_hp' do
    it 'takes 1 argument' do
      expect(player).to respond_to(:reduce_hp).with(1).argument
    end

    context 'when the function is given an argument of 10' do
      it 'decreases the amount of player_hp by 10' do
        expect{ player.reduce_hp(10) }.to change{ player.player_hp }.by(-10)
      end
    end
  end
end
