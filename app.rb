require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('input')
  @phrase = params.fetch('phrase')
  @results = @word.count(@phrase)
  erb(:results)
end
