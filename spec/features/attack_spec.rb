require 'spec_helper'
require './app.rb'


feature "Player 1 can attack Player 2" do
  scenario "when I click the 'attack' button, it reduces HP from player 2 by 10" do
    click_button("Attack")
    expect(@hp_player_2).to change_by(-10)
  end
end

feature "Player 2 can attack Player 1" do
  scenario "when I click the 'attack' button, it reduces HP from player 1 by 10" do
    attack_player1
    expect($player1.player_hp).to eq(90)
  end
end
