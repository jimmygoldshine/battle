def sign_in_and_play
  visit "/"
  fill_in "Player1", :with => "Tudor"
  fill_in "Player2", :with => "Louisa"
  click_button('Submit')
end

def sign_in_and_p1_attacks
  sign_in_and_play
  visit "/attack"
end

def sign_in_and_p1_attacks_twice
  sign_in_and_p1_attacks
  click_button('Next')
  visit "/attack"
  click_button('Next')
  visit "/attack"
end

def sign_in_and_play_with_computer
  visit "/"
  fill_in "Player1", :with => "Tudor"
  click_button('Submit')
end
