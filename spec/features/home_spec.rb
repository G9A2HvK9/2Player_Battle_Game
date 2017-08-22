require 'spec_helper'
require './app'

feature 'Progressing to the fight screen' do
  scenario 'clicking the Fight! button takes me to the fight screen' do
    visit('/')
    fill_in 'player1', with: 'Player 1'
    fill_in 'player2', with: 'Player 2'
    click_button('Fight!')
    expect(page).to have_current_path('/fight')
  end
end

feature 'Assigning player names' do
  scenario 'The name for player1 is assigned correctly' do
    visit('/')
    fill_in 'player1', with: 'Player 1'
    fill_in 'player2', with: 'Player 2'
    click_button('Fight!')
    expect(page).to have_css('p#player1_name', :text => 'Player 1')
  end

  scenario 'The name for player2 is assigned correctly' do
    visit('/')
    fill_in 'player1', with: 'Player 1'
    fill_in 'player2', with: 'Player 2'
    click_button('Fight!')
    expect(page).to have_css('p#player2_name', :text => 'Player 2')
  end
end
