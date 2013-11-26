def fib(num)
  first, last = 0, 1
  num.times { first, last = last, first + last }
  first
end

def fib_dig(digits)
  this_num = 0
  length = 0
  until length == digits
    this_num += 1
    length = fib(this_num).to_s.length 
  end
  this_num
end

puts fib_dig(1)
puts fib_dig(2)
puts fib_dig(3)
puts fib_dig(1000)

