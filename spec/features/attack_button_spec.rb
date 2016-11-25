require 'spec_helper'
require 'game.rb'

feature "Battle", :type => :feature do
  scenario "Confirmation for attacking" do
    sign_in_and_play_with_computer
    click_button('Attack')
    expect(page).to have_content("has attacked ")
  end

  scenario "Paralyse opponent" do
    allow_any_instance_of(Game).to receive(:paralysed?).and_return(true)
    sign_in_and_play
    click_button('Paralyse')
    expect(page).to have_content("has paralysed")
  end

end
