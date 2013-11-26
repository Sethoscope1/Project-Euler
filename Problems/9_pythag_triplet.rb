def trip_pair(num1, num2)
  Math.sqrt(num1 ** 2 + num2 ** 2) % 1 == 0
end

def match_set
  set = []
  (1..500).each do |num1|
    (1..500).each do |num2|
      set << [num1, num2] if trip_pair(num1, num2)
    end
  end
  set
end

set = match_set

def answer(set)
  set.each do |num1, num2|
    if num1 + num2 + Math.sqrt((num1 ** 2 + num2 ** 2)) == 1000
      return num1 * num2 * Math.sqrt((num1 ** 2 + num2 ** 2))
    end
  end
end

puts answer(set)

