def two_sum?(arr, target)
  arr.each_with_index do |el1, i|
    arr.each_with_index do |el2, j|
      next if i == j
      return true if el1 + el2 == target
    end
  end
  false
end


def okay_two_sum?(arr, target)
  i = 0
  j = arr.length - 1
  while i != j
    return true if arr[i] + arr[j] == target
    if arr[j] + arr[i] > target
      j -=1
    else
      i += 1
    end
  end
false
end


def hash_map(arr,target)
  hash = {}
  arr.each do |ele|
    difference = (target - ele)
    return true if hash[difference]
    hash[ele] = difference
  end
  false
end
