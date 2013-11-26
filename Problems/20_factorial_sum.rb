def factorial(num)
  (1..num).inject(1) { |sum, num| sum * num }
end



def digits_sum(num)
  digits = []
  while num > 0
    digits << num % 10
    num /= 10
  end
  digits.inject(0) { |sum, num| sum += num }
end

puts digits_sum(factorial(100))
puts digits_sum((2 ** 1000))