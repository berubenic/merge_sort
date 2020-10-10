# frozen_string_literal: true

def merge_sort(arr)
  if arr.length > 1
    left = arr[0..arr.length / 2 - 1]
    right = arr[arr.length / 2..-1]
    merge_sort(left)
    merge_sort(right)
    merge(left, right)
  end
end

def merge(left, right)
  result = []
  i = 0
  j = 0
  k = 0

  while i < left.length && j < right.length
    if left[i] < right[j]
      result[k] = left[i]
      k += 1
      i += 1
    else
      result[k] = right[j]
      k += 1
      j += 1
    end
  end
  until i == left.length
    result[k] = left[i]
    k += 1
    i += 1
  end
  until j == right.length
    result[k] = right[j]
    k += 1
    j += 1
  end
end

p merge_sort([5, 7, 9, 2, 6, 3, 5, 5])
p merge([2, 4, 7], [1, 2, 4])
