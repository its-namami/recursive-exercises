# frozen_string_literal: true

STARTING_SEQUENCE = [0, 1].freeze

def fibs(size)
  return STARTING_SEQUENCE.take(size) if size <= STARTING_SEQUENCE.size

  index = STARTING_SEQUENCE.size
  fibonacci = STARTING_SEQUENCE.dup
  while index < size
    index += 1

    fibonacci << fibonacci.last(2).sum
  end

  fibonacci
end

def fibs_rec(size, fibonacci = STARTING_SEQUENCE.dup)
  return STARTING_SEQUENCE.take(size) if size <= STARTING_SEQUENCE.size

  return fibs_rec(size, fibonacci << fibonacci.last(2).sum) unless fibonacci.size >= size

  fibonacci
end

p 'Iterative: '
p fibs(8)
p 'Recursive: '
p fibs_rec(8)
