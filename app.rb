require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @string = params.fetch('string')
  @results = @string.anagram(@word)
  erb(:results)
end
