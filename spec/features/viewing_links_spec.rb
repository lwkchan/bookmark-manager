
feature "viewing links" do
  scenario "Allow user to see all the bookmarks link" do
    visit "/"
    expect(page).to have_content('google.com')
  end
end
