def select_even_nums(array)
  array.select do |nums|
    nums % 2 == 0
  end

end


def reject_puppies(hash_array)
  hash_array.reject do |hash|
    hash['age'] <= 2
  end
end


def count_positive_subarrays(array)
  array.count do |sub_array|
    sub_array.sum > 0
  end
end