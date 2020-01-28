# Nicholas Cashiola - CSCE 431 - HW1

# Part 1

# 1.0
def sum arr

  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. 
  # For an empty array it should return zero. 
  # Run associated tests via: $ rspec -e '#sum ' spec/part1_spec.rb
  x = 0
  for a in arr
      x = x + a
  end
  
  return x
  
end

# 1.1
def max_2_sum arr
  # empty array case
  if (arr.length() == 0)
    return 0
  # single element array case
  elsif (arr.length() == 1)
    return arr[0]
  end
  
  # finding the max
  max = arr[0] + arr[1]
  for x in 0 ... arr.length()
    for y in 1 ... arr.length()
      if ((arr[x] + arr[y]) > max)
        max = arr[x] + arr[y]
      end
    end
  end
  
  return max
  
end

# 1.2
def sum_to_n? arr, n
  # check for arr of length 1
  if (arr.length() == 1)
    return false
  end
  
  # iterate and check all possible sums of the array
  for x in 0 ... arr.length()
    for y in x + 1 ... arr.length()
      if(arr[x] + arr[y] == n)
        # found a solution
        return true
        
      end
    end
  end
  
  return false
  
end

# Part 2

# 2.0
def hello(name)
  
  # simple string concatenation
  return "Hello, #{name}"
end

# 2.1
def starts_with_consonant? s
  
  # empty string case
  if(s.empty?)
    return false
  end
  
  # first character is not an alphanumeric symbol case
  # POSIX bracket expressions
  # adapted from https://www.regular-expressions.info/posixbrackets.html
  if(!(s[0] =~ /[[:alnum:]]/))
    return false
  end
  
  # we can use a case statement to handle this
  case s[0]
  when "a"
    return false
  when "A"
    return false
  when "e"
    return false
  when "E"
    return false
  when "i"
    return false
  when "I"
    return false
  when "O"
    return false
  when "o"
    return false
  when "u"
    return false
  when "U"
    return false
  # Not a vowel, therefore true
  else 
    return true
  end
end

# 2.2
def binary_multiple_of_4? s
  # 4 is the third order of any binary #
  # if any number ends in 00, then it is a multiple of 4
  if(/^[10]*00$/.match?(s))
    return true
  elsif(s == "0")
    return true
  elsif(s == "00")
    return true
  else
    return false
  end
end

# Part 3

# 3.1
class BookInStock
  
  # initializer
  def initialize(i, p)
    if (i == nil or i.size() == 0)
      raise ArgumentError.new('There must be an ISBN number...')
    elsif(p <= 0.00)
      raise ArgumentError.new('The price must be greater than zero...')
    end
    @isbn = i
    @price = p
  end
  
  # getters
  def isbn()
    return @isbn
  end
  
  def price()
    return @price
  end
  
  # setters
  def isbn=(new_value)
    if (new_value == nil or new_value.size == 0)
      raise ArgumentError.new('There must be an ISBN number...')
    end
    @isbn = new_value
  end
  
  def price=(new_value)
    if(new_value <= 0.00)
      raise ArgumentError.new('The price must be greater than zero...')
    end
    @price = new_value
  end
  
  #price as string
  def price_as_string()
    str = "$%0.2f" % [@price]
    return str
  end
end
