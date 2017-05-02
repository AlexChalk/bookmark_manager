feature 'creating a link' do
  scenario 'create a link' do
    visit '/links'
    fill_in('link_name', with:'google')
    fill_in('link_url', with: 'http://www.google.com')
    click_button 'Create new link'
  end
end
