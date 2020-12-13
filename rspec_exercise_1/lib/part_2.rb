require 'byebug'
def hipsterfy(word)
  word = word.split('')
  vowels = 'aeiou'
  i = word.length - 1 
  while i >= 0
    # char = word[i]
    if vowels.include?(word[i])
      word[i] = ''
      break
    end
    i -= 1
  end

  word.join
end


def vowel_counts(string)
  vowel_hash = Hash.new(0)
  vowels = 'aeiou'

  string.each_char do |char|
    vowel_hash[char] += 1 if vowels.include?(char)
  end

  vowel_hash
end


