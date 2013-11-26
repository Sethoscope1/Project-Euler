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

def n_prime(num)
  count = 1
  last_prime = 2
  until count == num
    last_prime = next_prime(last_prime)
    count += 1
  end
  last_prime
end

puts n_prime(1)
puts n_prime(2)
puts n_prime(3)
puts n_prime(6)
puts n_prime(10001)