require 'spec_helper'
require './app'

#Integrated feature test of the fight screen

feature 'Feature Testing the Fight screen' do

  before :each do
    sign_in_and_play
  end

  scenario 'The Page exists' do
    visit '/fight'
    expect(page).to have_current_path('/fight')
    expect(page.status_code).to eq(200)
  end

  scenario 'Player names are displayed correctly on the fight screen' do
    expect(page).to have_css('div#player_name', :text => 'Name 1')
    expect(page).to have_css('div#player_name', :text => 'Name 2')
  end

  scenario 'Player HP is displayed on the fight screen' do
    visit('/fight')
    expect(page).to have_css('div#player_hp', count: 2)
  end

  scenario 'There is an attack button on the fight page' do
    visit('/fight')
    expect(page).to have_selector('input[type=submit][id="attack_button"]')
  end

  scenario 'When clicking the Attack button, I am progressed to the attack screen' do
    visit('/fight')
    click_button('Attack!')
    expect(page).to have_current_path('/attack')
    expect(page.status_code).to eq(200)
  end

end
