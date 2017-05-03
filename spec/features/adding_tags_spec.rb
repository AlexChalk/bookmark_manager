feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'link_url', with: 'http://www.makersacademy.com/'
    fill_in 'link_name', with: 'Makers Academy'
    fill_in 'link_tag', with: 'education'

    click_button 'Create new link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end
end
