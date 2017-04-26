require 'spec_helper'
require './app'

feature 'Testing infrastructure' do
  scenario "can run app and check page content" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end

  feature 'Entering player names and displaying them' do
    scenario "Expects player names to be displayed with a commencement message" do
      visit('/')
      fill_in 'player1', :with => 'Widgyoto'
      fill_in 'player2', :with => 'Gordon'
      click_button 'Create Players'
      expect(page).to have_text('Player 1 is Widgyoto')
      expect(page).to have_text('Player 2 is Gordon')
      expect(page).to have_text('Let the battle commence!!!')
    end
  end
