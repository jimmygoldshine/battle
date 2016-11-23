require 'spec_helper'
require_relative 'web_helper'

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
    sign_in_and_play
  end

  it "should display both hitpoints to screen" do
    expect(page).to have_content('P2_hitpoints')
  end
end

describe "Attack player" do
  before do
    sign_in_and_play
  end

  it "clicking attack button should display confirmation message" do
    click_button('attack_p2')
    expect(page).to have_content('P2_REKT')
  end
end
