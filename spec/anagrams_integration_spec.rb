require('capybara/rspec')
require('./app')
Capybars.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram detector path', {:type => :feature}) do

  it('takes word from the user and another word and determines if it is an anagram') do
    visit('/')
    fill_in('word', :with => 'dog')
    fill_in('string', :with => 'god')
    click_button('anagrammed')
    expect(page).to have_content('true')
  end


end
