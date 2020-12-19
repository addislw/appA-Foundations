def all_words_capitalized?(word_array)
  word_array.all? { |word| word == word.capitalize }
end


def no_valid_url?(url_array)
  domains = ['.com', '.net', '.io', '.org']
  url_array.none? { |url| url.end_with?(*domains) }
end

