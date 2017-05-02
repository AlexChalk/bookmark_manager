require_relative '../../app.rb'

feature 'create a link' do
  scenario 'visit site' do
    Link.create(url: 'http://www.makersacademy.com', title: 'My first link')
    visit '/links'
    within 'ul#links' do
      expect(page).to have_content('My first link')
    end
  end
end
