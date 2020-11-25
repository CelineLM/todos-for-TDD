require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in 

    create_todo "Do the dishes"

    expect(page).to display_todo "Do the dishes"
  end
end