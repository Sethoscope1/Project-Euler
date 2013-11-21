def multiple(num, range)
  range.each do |div|
    if num % div != 0
      return false
    end
  end
  true
end

def smallest_multiple(num=1, range)
  i = num
  until multiple(i, range) == true
    smallest_multiple(i + 1, range)
  end
  i
end
puts smallest_multiple((1..3))
puts multiple(6, (1..3))
puts multiple(7, (1..3))
puts multiple(2520, (1..10))