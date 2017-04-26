require 'spec_helper'
require './app'

feature 'Testing infrastructure' do
  scenario "can run app and check page content" do
    visit('/')
    expect(page).to have_content "Enter Player Names"
  end
end

feature 'Entering player names and displaying them' do
  scenario "Expects player names to be displayed with a commencement message" do
    visit('/')
    fill_in 'player1', :with => 'Widgyoto'
    fill_in 'player2', :with => 'Gordon'
    click_button 'Create Players'
    expect(page).to have_text('Widgyoto gets ')
    expect(page).to have_text('Gordon gets')
    expect(page).to have_button('FIGHT!')
  end

feature 'Hitting the FIGHT!' do
  scenario 'It takes you to a new page' do
    visit('/')
    fill_in 'player1', :with => 'Widgyoto'
    fill_in 'player2', :with => 'Gordon'
    click_button 'Create Players'
    click_button 'FIGHT!'
    save_and_open_page
    expect(page).to
  end
end


  end
