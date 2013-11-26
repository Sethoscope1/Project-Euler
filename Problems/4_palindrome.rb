def gen_pals
  pals = []
  (100..999).each do |num1|
    (100..999).each do |num2|
      product = num1 * num2
      pals << product if product.to_s == product.to_s.reverse
    end
  end
  pals.sort.last
end


puts gen_pals

