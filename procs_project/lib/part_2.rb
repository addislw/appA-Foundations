def reverser(string, &prc)
  prc.call(string.reverse)
end


def word_changer(string, &prc)
  new_sentence = string.split.map do |word|
    prc.call(word)
  end
  new_sentence.join(' ')
end


def greater_proc_value(num, prc_1, prc_2)
  result_1 = prc_1.call(num)
  result_2 = prc_2.call(num)
  if result_1 > result_2
    return result_1
  else
    return result_2
  end
end



def and_selector(array, prc_1, prc_2)
  new_array = array.select do |ele|
    prc_1.call(ele) && prc_2.call(ele)
  end

  new_array
end



def alternating_mapper(array, prc_1, prc_2)
  new_array = array.map.with_index do |ele, idx|
    if idx % 2 == 0 
      prc_1.call(ele)
    else
      prc_2.call(ele)
    end
  end

  new_array
end

