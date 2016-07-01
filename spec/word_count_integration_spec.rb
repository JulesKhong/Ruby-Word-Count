require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#
describe('the search results',{:type => :feature}) do
  it 'takes a word and phrase, and returns the frequency of the word in the phrase' do
    visit('/')
    fill_in('input',:with => "sea")
    fill_in('phrase',:with => "She sells sea shells by the sea shore")
    click_button('Submit')
    expect(page).to have_content('2')
  end
end
