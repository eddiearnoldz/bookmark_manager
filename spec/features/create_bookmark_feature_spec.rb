feature "creating a bookmark" do
  scenario "the user inputs a bookmark and sees a confirmation that its saved" do
    visit '/bookmarks/create'
    fill_in :url, with: "http://www.testbookmark.com"
    fill_in :title, with: "Test Bookmark"
    click_button "submit"
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    end
end