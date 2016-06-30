require('rspec')
require('anagrams.rb')

describe('String#anagrams') do

  it("take a word from the user and another word and returns true and false anagrams") do
    expect("god".anagram("dog")).to(eq(['god', '']))
  end

  it("take a word from the user and another word and returns true and false anagrams") do
    expect("good".anagram("dog")).to(eq(['', 'good']))
  end

  it("takes two words (separated by spaces) from the user and returns true and false anagrams") do
    expect("god good".anagram("dog")).to(eq(['god', 'good']))
  end

  it("takes several words (separated by spaces) from the user and returns true and false anagrams") do
    expect("god cat good".anagram("dog")).to(eq(['god', 'cat good']))
  end
end
