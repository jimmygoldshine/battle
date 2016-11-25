require 'spec_helper'

feature "Battle", :type => :feature do
  scenario "Confirmation for attacking" do
    sign_in_and_play_with_computer
    click_link('Attack!!!')
    expect(page).to have_content("has attacked ")
  end
end
