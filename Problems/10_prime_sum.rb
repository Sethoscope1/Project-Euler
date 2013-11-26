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

def prime_list(num)
  primes = []
  (2..num).each do |num|
    primes << num if is_prime?(num)
  end
  primes
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

def prime_total(max)
  total = 0
  (2..max).each do |num|
    total += num if is_prime?(num)
  end
  total
end


puts prime_total(2_000_000)