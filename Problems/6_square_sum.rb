def sum_squares(num)
  (1..num).inject(0) { |sum, num| sum += num ** 2}
end

def square_sum(num)
  (1..num).inject(0) { |sum, num| sum += num } ** 2
end

def sum_square_dif(num)
  square_sum(num) - sum_squares(num)
end

puts sum_square_dif(100)