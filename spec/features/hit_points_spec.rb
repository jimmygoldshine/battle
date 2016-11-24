require 'spec_helper.rb'

feature "Battle", :type => :feature do
  scenario "Players see eachothers hit points" do
    sign_in_and_play
    expect(page).to have_content("Louisa: #{Player::DEFAULT_HIT_POINTS}/20HP")
  end
end
