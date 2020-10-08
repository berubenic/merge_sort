# frozen_string_literal: true

def merge_sort(arr)
  arr if arr.length < 2
  left = arr[0..arr.length / 2 - 1]
  right = arr[arr.length / 2..-1]
  p left
  p right
  merge(left, right)
end

def merge(left, right, arr = [])
  if left.length == 1
    return left
  elsif right.length == 1
    return right
  end

  if left[0] < right[0]
    arr.push(right[0])
    arr.push(left[0])
  else
    arr.push(left[0])
    arr.push(right[0])
  end
  p arr
end

merge_sort([9, 8, 7, 6, 5, 4, 3, 2])
