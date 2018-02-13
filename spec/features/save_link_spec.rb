feature 'Save link' do
  scenario 'Add link to list' do
    visit '/'
    fill_in('link', with: 'http://www.duckduckgo.com')
    click_button('Submit')
    expect(page).to have_content 'http://www.duckduckgo.com'
  end
end
