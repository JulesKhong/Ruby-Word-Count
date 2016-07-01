require('pry')

class String
  define_method(:count) do |user_phrase|

    select_word = self.downcase()
    phrase_array = user_phrase.downcase().split(" ")
    counter = []

    phrase_array.each do |each_phrase_word|
      if select_word == each_phrase_word
        counter = counter.push(each_phrase_word)
      end
    end
    total = counter.length().to_s()
    total
  end
end
