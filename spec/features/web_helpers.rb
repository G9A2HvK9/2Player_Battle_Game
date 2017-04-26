def sign_in_and_play
  visit('/')
  fill_in 'player1', :with => 'Widgyoto'
  fill_in 'player2', :with => 'Gordon'
  click_button 'Create Players'
end
