require_relative '../../app.rb'

feature 'create a link' do
  scenario 'visit site' do
    visit '/'
    Link.create(title: 'My first link')
    expect(page).to have_content
  end
end
