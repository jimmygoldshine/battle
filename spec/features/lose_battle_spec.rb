require 'spec_helper'

feature "lose battle confirmation", :type => :feature do

  scenario "if player2 reaches 0hp receive battle loss message" do
    allow_any_instance_of(Game).to receive(:random_number).and_return(10)
    sign_in_and_p1_attacks_twice
    expect(page).to have_content("Louisa has lost")
  end
end
