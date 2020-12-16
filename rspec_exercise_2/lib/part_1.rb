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



def substrings(string)
  subs = []
  (0...string.length).each do |start_idx|
    (start_idx...string.length).each do |end_idx|
      subs << string[start_idx..end_idx]
    end
  end
    
  subs
end