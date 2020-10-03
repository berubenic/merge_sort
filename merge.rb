# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  left = arr[0..(arr.length / 2 - 1)]
  right = arr[(arr.length / 2)..-1]

  p left
  p right
end

merge_sort([2, 1, 6, 7, 10, 3, 5, 8])
