feature 'creating a link' do
  scenario 'I can create a link' do
    visit '/links/new'
    fill_in('link_name', with:'google')
    fill_in('link_url', with: 'http://www.google.com')
    click_button 'Create new link'

    expect(current_path).to eq '/links'

    within('ul#links') do
      expect(page).to have_content 'google'
      expect(page).to have_content 'http://www.google.com'
    end
  end
end
