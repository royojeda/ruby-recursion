def merge(left, right)
  result = []
  loop do
    if left.empty?
      result += right
      break
    elsif right.empty?
      result += left
      break
    else
      result.push left[0] <= right[0] ? left.shift : right.shift
    end
  end
  result
end

# main merge sort algorithm
def merge_sort(arr)
  if arr.length == 1
    arr
  else
    left = merge_sort(arr[0..((arr.length / 2) - 1)])
    right = merge_sort(arr[(arr.length / 2)..(arr.length - 1)])

    merge(left, right)
  end
end

test = Array.new(20) { rand(-10..10) }
p merge_sort(test)
