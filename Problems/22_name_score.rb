letter_score = ("A".."Z").to_a
letter_hash = {}
letter_score.each_with_index { |letter, index| letter_hash[letter] = index + 1 }


names_list = File.open("names.txt", "r").read.scan(/\w+/)


puts letter_hash



def score_name(name)
  letter_score = ("A".."Z").to_a
  letter_hash = {}
  letter_score.each_with_index { |letter, index| letter_hash[letter] = index + 1 unless letter == '"' }

  score = 0
  name.scan(/./) { |letter| score += letter_hash[(letter.upcase)]}
  score
end

puts names_list[0..1]

total_score = 0

puts score_name("AAA")
puts score_name("ABCD")
# names_list.sort.each_with_index do |name, index| score += 1 
#   if score_name(name) > 0
#     score += score_name * (index + 1)
#   end
# end

names_list_test = ["SETH", "DOG", "CAT"]
names_list.sort.each_with_index do |name, index|
  total_score += score_name(name) * (index +1)
end
puts names_list[0]

puts "SETH"
puts total_score




