require 'spec_helper'
require 'game.rb'

feature "Attacked", :type => :feature do
  scenario "Player 2's hitpoints decreases by damage" do
    allow_any_instance_of(Game).to receive(:random_number).and_return(5)
    sign_in_and_play
    visit "/attack"
    expect(page).to have_content(Player::DEFAULT_HIT_POINTS-5)
  end
end
