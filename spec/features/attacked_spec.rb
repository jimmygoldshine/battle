require 'spec_helper'

feature "Attacked", :type => :feature do
  scenario "Player 2's hitpoints decreases by 10" do
    sign_in_and_play
    visit "/attack"
    expect(page).to have_content(Player::DEFAULT_HIT_POINTS-10)
  end
end
