def collatz(num)
  count = 1
  until num == 1
    if num % 2 == 0
      num /= 2
    else
      num = num * 3 + 1
    end
    count +=1
  end
  count
end

def largest_collatz(num)
  largest_count = 0
  largest = 0
  (1..num).each do |num|
    if collatz(num) > largest_count
      largest = num
      largest_count = collatz(num)
    end
  end
  largest
end

puts largest_collatz(1_000_000)


