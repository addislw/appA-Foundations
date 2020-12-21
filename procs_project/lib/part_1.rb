def my_map(array, &prc)
  new_array = []
  array.each do |ele|
    new_ele = prc.call(ele)
    new_array << new_ele
  end

  new_array
end

p my_map([1,2,3]) { |n| 2 * n }