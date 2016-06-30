require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram detector path', {:type => :feature}) do

  it('takes word from the user and another word and determines if it is an anagram') do
    visit('/')
    fill_in('word', :with => 'dog')
    fill_in('string', :with => 'god')
    click_button('anagrammed')
    expect(page).to have_content('anagrams: god')
    expect(page).to have_content('not anagrams: ')
  end

  it('takes sentence from the user and another word and determines which words if any are anagrams of the word') do
    visit('/')
    fill_in('word', :with => 'dog')
    fill_in('string', :with => 'god good gosh')
    click_button('anagrammed')
    expect(page).to have_content('anagrams: god')
    expect(page).to have_content('not anagrams: good gosh')
  end
end
