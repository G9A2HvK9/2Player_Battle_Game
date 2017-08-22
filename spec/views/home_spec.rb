require 'spec_helper'
require './app'

feature 'Home page displays correctly' do
  scenario 'there is a label for player1' do
    visit('/')
    expect(page).to have_css('h2#player1_label', :text => 'Player 1')
  end

  scenario 'there is a label for player2' do
    visit('/')
    expect(page).to have_css('h2#player2_label', :text => 'Player 2')
  end

  scenario 'there is an input field for player1' do
    visit('/')
    expect(page).to have_css('input#player1_input')
  end

  scenario 'there is an input field for player2' do
    visit('/')
    expect(page).to have_css('input#player2_input')
  end

  scenario 'there is a Fight! button' do
    visit('/')
    expect(page).to have_selector('input[type=submit][value="Fight!"]')
  end
end
