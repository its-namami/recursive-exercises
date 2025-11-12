# frozen_string_literal: true

def divide(array)
  halflen = array.size / 2

  [array.take(halflen), array.drop(halflen)]
end

def sort_bin(array)
  return array unless array.length == 2

  array[0] > array[1] ? [array[1], array[0]] : array
end

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

def merge_sort
end
