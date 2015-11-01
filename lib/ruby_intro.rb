# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Use reduce with a single operator
  arr.reduce(0, :+)
end

def max_2_sum arr
  sum(arr.sort.pop(2))
end

def sum_to_n? arr, n
  arr.sort.combination(2).each { |c| return true if sum(c) == n }
  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return !(s =~ /^[b-z&&[^eiou]]/i).nil?
end

def binary_multiple_of_4? s
  return Integer(s,2) % 4 == 0
  rescue ArgumentError
    return false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.02f' % @price}"
  end
end