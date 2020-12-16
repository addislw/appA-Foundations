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


def caesar_cipher(msg, num)
  alphabet = ('a'..'z').to_a
  secret_msg = ''
  msg.each_char do |char|
    if alphabet.include?(char)
      old_idx = alphabet.index(char)
      new_char = alphabet[old_idx + num] % 26
    else
      new_char = char
    end
    secret_msg += new_char
  end

  secret_msg
end