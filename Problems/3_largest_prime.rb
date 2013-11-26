def is_prime?(num)

  return false if num == 1 || num == 0
  return true if num == 2
  return false if num % 2 == 0
  (3..Math.sqrt(num)).each do |div| 
    if num % div == 0
      return false
    end
  end
  true
end

def next_prime(num)
  num += 1
  num += 1 until is_prime?(num)
  num
end

def largest_factor(num)
  big_prime = 2
  big_factors = []
  until big_prime >= num/2
    big_prime = next_prime(big_prime)
    big_factors << big_prime if num % big_prime == 0
  end
  big_factors[-1]
end

puts largest_factor(1006000)


# def largest_factor(num)
#   largest = 0
#   (2..num/2).each { |div| largest = div if is_prime?(div) && num % div == 0 }
#   largest
# end




