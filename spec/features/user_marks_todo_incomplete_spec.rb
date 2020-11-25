require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    
    create_todo "Do the dishes"

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Do the dishes"
    expect(page).to display_todo "Do the dishes"
  end
end