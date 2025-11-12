# frozen_string_literal: true

def divide(array)
  halflen = array.size / 2

  [array.take(halflen), array.drop(halflen)]
end

def sort_bin(array)
  return array unless array.length == 2

  array[0] > array[1] ? [array[1], array[0]] : array
end

def merge_arrays(one, two); end

def merge_sort; end
