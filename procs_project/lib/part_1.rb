def my_map(array, &prc)
  new_array = []
  array.each do |ele|
    new_ele = prc.call(ele)
    new_array << new_ele
  end

  new_array
end



def my_select(array, &prc)
  new_array = []
  array.each do |ele|
    if prc.call(ele)
      new_array << ele
    end
  end

  new_array
end


