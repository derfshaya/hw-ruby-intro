# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Use reduce with a single operator
  arr.reduce(0, :+)
end

def max_2_sum arr
  return 0 if arr.empty?
  max = arr.max
  return max if arr.length == 1
  max_encountered = false
  max2 = arr.reject { |i|
    if !max_encountered && i == max
      max_encountered = true
      true  
    else
      false
    end
  }.max
  return max + max2
end

def sum_to_n? arr, n
  # if empty array, a sum of 0 can be achieved
  return false if arr.empty?

  # nested iterator
  arr1 = arr.sort
  found = false
  0.upto(arr1.length-1) { |idx|
    x = arr1[idx]
    0.upto(arr1.length-1) { |idx2|
      if idx2 != idx
        y = arr1[idx2]
        found = true if x+y == n
      end
    } if x <= n
  }
  return found
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return !(s =~ /^[b-z&&[^eiou]]/i).nil?
end

def binary_multiple_of_4? s
  return Integer(s, 2) % 4 == 0
  rescue ArgumentError
    return false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.02f' % @price}"
  end
end