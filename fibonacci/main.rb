#frozen_string_literal: true

STARTING_SEQUENCE = [0, 1]

def fibs(size)
  if size <= STARTING_SEQUENCE.size
    return STARTING_SEQUENCE.take(size)
  end

  index = STARTING_SEQUENCE.size
  fibonacci = STARTING_SEQUENCE

  while index < size
    index += 1

    fibonacci << fibonacci.last(2).sum
  end

  fibonacci
end

p fibs(8)
