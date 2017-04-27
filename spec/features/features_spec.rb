require 'spec_helper'
require './app'

feature 'Testing infrastructure' do
  scenario "can run app and check page content" do
    visit('/')
    expect(page).to have_content "Player 1"
  end
end

feature 'Entering player names and displaying them' do
  scenario "Expects player names to be displayed with a commencement message" do
    sign_in_and_play
    expect(page).to have_text('Widgyoto gets ')
    expect(page).to have_text('Gordon gets')
    expect(page).to have_button('FIGHT!')
  end


  end
