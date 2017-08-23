def sign_in_and_play
    visit ('/')
    fill_in 'player1', :with => 'Name 1'
    fill_in 'player2', :with => 'Name 2'
    click_button 'Fight!'
end
