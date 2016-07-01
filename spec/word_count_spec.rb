require('word_count')
require('rspec')
require('sinatra')
require('capybara/rspec')

describe('String#count') do
  it("takes a keyword and a phrase, and identifies if that keyword is in the phrase")do
    expect(("sea").count("She sells sea shells by the sea shore")).to(eq("2"))
  end
end
