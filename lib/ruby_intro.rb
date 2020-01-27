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
  return "Hello, #{name}"
end

# 2.1
def starts_with_consonant? s
  # YOUR CODE HERE
end

# 2.2
def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

# 3.1
class BookInStock
# YOUR CODE HERE
end
