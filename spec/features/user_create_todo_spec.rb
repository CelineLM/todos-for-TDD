require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in 

    click_on "Add a new todo"
    fill_in "Title", with: "Do the dishes"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Do the dishes"
  end
end