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


