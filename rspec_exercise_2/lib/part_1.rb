def palindrome?(string)
  reverse_string = ''
  i = 0 
  while i < string.length
    char = string[i]
    reverse_string = char + reverse_string 
    i += 1
  end

  reverse_string == string
end