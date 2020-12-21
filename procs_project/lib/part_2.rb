def reverser(string, &prc)
  prc.call(string.reverse)
end


def word_changer(string, &prc)
  new_sentence = string.split.map do |word|
    prc.call(word)
  end
  new_sentence.join(' ')
end