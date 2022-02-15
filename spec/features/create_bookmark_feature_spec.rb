feature "creating a bookmark" do
  scenario "the user inputs a bookmark and sees a confirmation that its saved" do
    visit '/bookmarks/create'
    fill_in :url, with: "http://www.something.com"
    click_button "submit"
    expect(page).to have_content "http://www.something.com"
  end
end