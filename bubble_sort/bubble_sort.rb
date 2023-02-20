def bubble_sort(array)
  # declare variable if the array is sorted
  sorted = false
  # create a loop
  until sorted
    sorted = true
    # compare every pair
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        # swap positions
        array [i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  # return results
  p array
  array
end

bubble_sort([4,3,78,2,0,2])