feature 'creating a link' do
  scenario 'create a link' do
    visit '/links'
    fill_in(link) 'new link'
    click_button 'Create new link'
  end
end
