require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the search for a word',{:type => :feature}) do
  it ('should first load the index') do
    visit('/')
    expect(page).to have_content("Check your frequency")
  end
end

describe('the search for a word',{:type => :feature}) do
  it ('takes a word and phrase and returns the frequency of the word in the phrase') do
    visit('/')
    fill_in('input', :with => 'sea')
    fill_in('list', :with => 'She sells sea shells by the sea shore')
    click_button('Submit')
    expect(page).to have_content('2')
  end
end
