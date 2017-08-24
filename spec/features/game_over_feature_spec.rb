#Integrated feature test of the fight screen

feature 'Feature Testing the Game Over screen' do

  before :each do
    visit '/game_over'
  end

  scenario 'The Page exists' do
    visit '/game_over'
    expect(page).to have_current_path('/game_over')
    expect(page.status_code).to eq(200)
  end

  scenario 'Game Over is displayed in an h1 header tag' do
    visit '/game_over'
    expect(page).to have_css('h1', :text => 'Game Over')
  end

  scenario 'The game over message is displayed' do
    expect(page).to have_css('div#game_over_message', :text => 'wins!')
  end

end
