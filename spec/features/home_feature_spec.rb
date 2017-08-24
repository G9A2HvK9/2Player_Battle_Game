require 'spec_helper'
require './app'

#Feature test of the home screen

feature 'Feature Testing the Home Screen' do

  before :each do
    visit('/')
  end

  scenario 'The Page exists' do
    visit '/'
    expect(page).to have_current_path('/')
    expect(page.status_code).to eq(200)
  end

  scenario 'Home Page displays a label for Player 1' do
    expect(page).to have_css('h2#player1_label', :text => 'Player 1')
  end

  scenario 'Home Page displays a label for Player 2' do
    expect(page).to have_css('h2#player2_label', :text => 'Player 2')
  end

  scenario 'Home page displays input field for Player 1 name' do
    expect(page).to have_css('input#player1_input')
  end

  scenario 'Home page displays input field for Player 2 name' do
    expect(page).to have_css('input#player2_input')
  end

  scenario 'Home page displays Fight! button' do
    expect(page).to have_selector('input[type=submit][value="Fight!"]')
  end

  scenario 'I can progress to the fight screen by clicking the Fight Button' do
    fill_in 'player1', with: 'Name 1'
    fill_in 'player2', with: 'Name 2'
    click_button('Fight!')
    expect(page).to have_current_path('/fight')
  end

end
