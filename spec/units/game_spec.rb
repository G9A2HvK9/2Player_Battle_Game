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
    it 'increases the turn count by 1 when called' do
      expect{ game.increase_turn_count }.to change{ game.turn }.by(1)
    end
  end

  #Class methods. Check that subject responds top .self methods

  describe '#self.create' do
    it 'creates a new instance of the Game class' do
      expect( game.class.create('test1', 'test2') ).to be_an_instance_of(Game)
    end
  end

  describe '#self.instance' do
    it 'creates a new instance of the Game class' do
      expect( game.class.instance ).to be_an_instance_of(Game)
    end
  end

end
