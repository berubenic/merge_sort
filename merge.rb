# frozen_string_literal: true

def merge_sort(arr)
  if arr.length > 1
    left = arr[0..arr.length / 2 - 1]
    right = arr[arr.length / 2..-1]
    merge_sort(left)
    merge_sort(right)
    merge(left, right, arr)
  end
end

def merge(left, right, arr)
  i = 0
  j = 0
  k = 0

  while i < left.length && j < right.length
    if left[i] < right[j]
      arr[k] = left[i]
      k += 1
      i += 1
    else
      arr[k] = right[j]
      k += 1
      j += 1
    end
  end
  until i == left.length
    arr[k] = left[i]
    k += 1
    i += 1
  end
  until j == right.length
    arr[k] = right[j]
    k += 1
    j += 1
  end
  p arr
end

p merge_sort([3, 9, 7, 4, 2, 8, 10])
