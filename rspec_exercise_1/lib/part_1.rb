def average(num_1, num_2)
  sum = num_1 + num_2
  sum / 2.0
end

def average_array(array)
  sum = array.sum
  sum / array.length.to_f
end

def repeat(string, num)
  repeated_string = string * num 
end

def yell(string)
  string = string.upcase + '!'
end

def alternating_case(string)
  string = string.split
  string.map! do |word|
    if (string.index(word)) % 2 == 0
      word.upcase
    else
      word.downcase
    end
  end
  .join(' ')
end