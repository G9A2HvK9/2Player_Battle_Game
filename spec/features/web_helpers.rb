def sign_in_and_play
  visit('/')
  fill_in 'player1', :with => 'Widgyoto'
  fill_in 'player2', :with => 'Gordon'
  click_button 'Fight!'
end

def attack_player1
  $player1 = Player.new("Fighter",100)
  $player2 = Player.new("Fighter2",100)
  visit('/fight')
  click_button("Attack!")
end
