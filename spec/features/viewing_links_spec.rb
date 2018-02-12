
feature "viewing links" do
  scenario "Allow user to see all the bookmarks link" do
    visit "/"
    expect(page).to have_link(href:'google.com')
  end
end
