#Lance Cook
#CSCI 420
#11 SEP 2015

# Part 1

def sum arr
  return 0 if arr.empty?
  
  sum = 0
  arr.each { |a| sum +=a }
  
  sum
end

def max_2_sum arr
  return 0 if arr.empty?
  
  return arr.first if arr.length == 1
  
  new_arr = arr.sort
  if new_arr.last == new_arr.at(-2)
    return new_arr.last + new_arr.last
  end
  
  total = 0
  total += new_arr.last
  new_arr.delete(new_arr.last)
  total += new_arr.last
  
  total
end

def sum_to_n? arr, n
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end



# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end 
  
  if /^[aeiou\d\W]/i.match(s)
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  if /^[01]/.match(s)
    decimal = s.to_i(2)
    
    if decimal % 4 == 0
      return true
    else 
      return false
    end
  else 
    return false
  end 
  
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    else 
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    price = self.price.to_s
    if /[.]/.match(price)
      if price[-2] == "."
        pricetos = "$" << price << "0"
      else
        pricetos = "$" << price
      end
    else 
      pricetos = "$" << price << ".00"
    end
    return pricetos
  end
  
end
