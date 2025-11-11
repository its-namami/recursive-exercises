# frozen_string_literal: true

STARTING_SEQUENCE = [0, 1].freeze

def small_size_check(size)
  STARTING_SEQUENCE.take(size) if size <= STARTING_SEQUENCE.size
rescue StandardError
  'Cannot be negative!'
end

def fibs(size)
  small_size = small_size_check size
  return small_size unless small_size.nil?

  index = STARTING_SEQUENCE.size
  fibonacci = STARTING_SEQUENCE.dup
  while index < size
    index += 1

    fibonacci << fibonacci.last(2).sum
  end

  fibonacci
end

def fibs_rec(size, fibonacci = STARTING_SEQUENCE.dup)
  small_size = small_size_check size
  return small_size unless small_size.nil?

  return fibs_rec(size, fibonacci + [fibonacci.last(2).sum]) unless fibonacci.size >= size

  fibonacci
end

p 'Iterative: '
p fibs(6)
p 'Recursive: '
p fibs_rec(7)
