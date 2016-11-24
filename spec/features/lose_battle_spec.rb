require 'spec_helper'

feature "lose battle confirmation", :type => :feature do

  scenario "if player2 reaches 0hp receive battle loss message" do
    sign_in_and_p1_attacks_twice
    expect(page).to have_content("Louisa has lost")
  end
end
