def all_words_capitalized?(word_array)
  word_array.all? { |word| word == word.capitalize }
end