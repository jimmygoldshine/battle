require 'spec_helper'


describe "Player creation" do
  context "when both players enter names" do
    it "submits form" do
      visit('/')
      fill_in('p1_name', with: 'John')
      fill_in('p2_name', with: 'Barry')
      click_button('submit')
    end
  end
end



RSpec.feature "Players enter their names", :type => :feature do
  scenario "when two players enters their names" do
    visit '/'

    fill_in "p1_name", :with => "John"
    fill_in "p2_name", :with => "Barry"
    click_button "submit"

    expect(page).to have_text("John vs Barry")
  end
end

describe "Displaying hitpoints" do
  before do
    visit('/')
    fill_in('p1_name', with: 'John')
    fill_in('p2_name', with: 'Barry')
    click_button('submit')
  end

  it "should display both hitpoints to screen" do
      expect(page).to have_content('P2_hitpoints')
  end
end
