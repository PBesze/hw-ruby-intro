# When done, submit this entire file to the autograder.

# Part 1

def sum array
       y = 0
        array.each do |x|
          y = y+x
        end
  return y
end

def max_2_sum arr
   arr = arr.sort.reverse
   return 0+arr[0].to_i+arr[1].to_i

end

def sum_to_n? (arr, n)
     y=false
    carr = arr.combination(2).to_a
    carr.each do |x|   
        
        if  x[0].to_i+x[1].to_i == n
            y= true
        end
    end
        return y
end

# Part 2

def hello name
  return "Hello, #{name}".to_s
end

def starts_with_consonant? s
   return ( (s =~ /\A[^AEIOU]/i)and (s =~ /\A[a-z]/i) ) == 0
end

def binary_multiple_of_4? (s)
   s.to_i(2).round(2) /4 ==s.to_i(2)/4 && s !~ /[^01]/ && s !=''
end

# Part 3

class BookInStock 
    def initialize (isbn, price)
        if price <=0 then raise ArgumentError
        end
        if isbn.length <1 then raise ArgumentError
        end
    @isbn = isbn
    @price = price
    end
   
    def isbn
       @isbn 
    end
    def isbn=(isbn)
        @isbn=isbn
    end
    def price
        @price
    end
    def price=(price)
        @price=price
    end
    def price_as_string
        
        return '$'+ ("%.2f" % @price).to_s
    end
    
end
