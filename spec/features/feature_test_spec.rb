require 'spec_helper'


describe "Player creation" do
  context "when both players enter names" do
    it "submits form" do
      visit('/players')
      fill_in('Player 1 name', with: 'John')
      fill_in('Player 2 name', with: 'Barry')
      click_button('Submit!')
    end
  end
end



RSpec.feature "Players enter their names", :type => :feature do
  scenario "when two players enters their names" do
    visit '/players'

    fill_in "Player 1 name", :with => "p1 name"
    fill_in "PLayer 2 name", :with => "p2 name"
    click_button "Submit!"

    expect(page).to have_text("p1 name vs p2 name")
  end
end
