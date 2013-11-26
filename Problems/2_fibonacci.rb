fib = [1, 2]
while fib.last <= 4_000_000
  fib << fib[-1] + fib[-2]
end

puts fib.select{ |num| num.even? }.inject(0) { |sum, num| sum += num }

