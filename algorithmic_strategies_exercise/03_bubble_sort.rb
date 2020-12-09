# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)
  sorted = false 

  # while !sorted
  #   sorted = true
  #   arr.each_with_index do |num, idx|
  #     unless num == arr.last
  #       if num > arr[idx]
  #         arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
  #         sorted = false
  #       end
  #     end
  #   end
  # end

  while !sorted 
    sorted = true
    i = 0
    while i < arr.length - 1
      if arr[i] > arr[i + 1]
        sorted = false
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
      i += 1
    end
  end

  arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]