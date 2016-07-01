require('pry')

class String
  define_method(:count) do |phrase|

    select_word = self.downcase()
    phrase_array = phrase.downcase().split(" ")
    counter = 0

    phrase_array.each do |phrase_word|
      if select_word == phrase_word
        counter = counter.+(1)
      end
    end
    counter = counter.to_s()
    # binding.pry
  end
end
