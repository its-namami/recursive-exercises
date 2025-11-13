# frozen_string_literal: true

require 'debug'

# Probably don't need it since I don't even need to recursively div
# def divide(array)
#   return array if array.size == 1
#
#   halflen = array.size / 2
#
#   [array.take(halflen), array.drop(halflen)]
# end
#
# Probably don't need this cuz I use the min method
# def sort_bin(array)
#   return array unless array.length == 2
#
#   array[0] > array[1] ? [array[1], array[0]] : array
# end

# merges two different arrays into a single one
def merge_arrays(one, two, merged = [], index_one = 0, index_two = 0)
  return merged + two[index_two..] if index_one == one.size
  return merged + one[index_one..] if index_two == two.size

  indexes = case one[index_one] < two[index_two]
            when true then [index_one + 1, index_two]
            else [index_one, index_two + 1]
            end

  smaller_item = [one[index_one], two[index_two]].min

  merge_arrays(one, two, merged + [smaller_item], *indexes)
end

# init: needs sorted pairs array, assumes it now only needs to merge only
def merge_sort(arrays); end

unsorted = [12, 98, 73, 46, 10, 28, 37, 49, 276, 63, 81, 29].each_slice(1).to_a.freeze

temp1 = unsorted.dup
temp2 = []

until temp1.size == 1
  j = 0

  while j < temp1.size
    if temp1[j + 1].nil?
      temp2[-1] = merge_arrays(temp2[-1], temp1[j])
      break
    else
      temp2 << merge_arrays(temp1[j], temp1[j + 1])
      j += 2
    end
  end

  temp1 = temp2.dup
  temp2 = []
end

p temp1
