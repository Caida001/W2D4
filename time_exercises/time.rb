def my_min1(list)
  list.each_with_index do |el1,idx|
    exclude_el1 = list[0...idx] + list[idx+1..-1]
    return el1 if exclude_el1.all? do |el2|
      el1 < el2
    end
  end
end


def my_min2(list)
  smallest = list.shift
  list.each do |el|
    smallest = el if smallest > el
  end
  smallest
end


def contig_sub_sum(arr)
  result = []

  i = 0
  while i < arr.length
    j = i
    while j < arr.length
      result << arr[i..j]
      j += 1
    end
    i += 1
  end

  result.map { |sub_arr| sub_arr.reduce(:+) }.max
end

def contig_sub_sum2(arr)
  return arr.max if arr.all? {|x| x < 0}
  max = arr.first
  cur = arr.first
  arr[1..-1].each do |el|
    cur += el
    cur = 0 if cur < 0
    max = cur if max < cur
  end
  max
end
