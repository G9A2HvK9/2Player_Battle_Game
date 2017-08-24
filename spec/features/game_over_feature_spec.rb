#Integrated feature test of the fight screen

feature 'Feature Testing the Game Over screen' do

  # While this code was previously working, I am stumped as to how to double/stub/mock the constituent parts of the game
  # in such a way that it allows me to reliably determine whether the game_over condition has been fulfilled.
  # I thus rely on unit tests of the Game_Over class

  # let(:player1){ Player.new('Name 1', 100) }
  # let(:player2){ Player.new('Name 2', 0) }
  #
  # scenario 'The Page exists' do
  #   visit '/game_over'
  #   expect(page).to have_current_path('/game_over')
  #   expect(page.status_code).to eq(200)
  # end
  #
  # scenario 'Game Over is displayed in an h1 header tag' do
  #   visit '/game_over'
  #   expect(page).to have_css('h1', :text => 'Game Over')
  # end
  #
  # scenario 'The game over message is displayed' do
  #   expect(page).to have_css('div#game_over_message', :text => 'wins!')
  # end

end
