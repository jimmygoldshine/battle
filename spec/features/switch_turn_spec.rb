require 'spec_helper.rb'

feature "switch turn", :type => :feature do

  scenario "after P1 attacks, it's P2's turn" do
    sign_in_and_p1_attacks
    click_button('Next')
    expect(page).to have_content("Louisa's go")
  end
end
