require 'spec_helper'

feature "Battle", :type => :feature do
  scenario "User see the attack message when computer is the opponent" do
    sign_in_and_play_with_computer
    click_button('Attack')
    click_button('Next')
    expect(page).to have_content("Computer has attacked")
  end
end
