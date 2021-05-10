# frozen_string_literal: true

def multiple_of_3_or_5?(current_number)
  (current_number % 3) || (current_number % 5) ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  if final_number.class != Integer || final_number.negative?
    "Ne fonctionne qu'avec les entiers naturels"
  else
    to_sum = []
    (0...final_number).each do |i|
      multiple_of_3_or_5?(i) == true ? to_sum << i : to_sum = to_sum
    end
    to_sum.sum
  end
end

puts multiple_of_3_or_5?(8)
puts sum_of_3_or_5_multiples(8)
puts multiple_of_3_or_5?(4)
puts sum_of_3_or_5_multiples(4)
puts multiple_of_3_or_5?(20)
puts sum_of_3_or_5_multiples(20)
puts multiple_of_3_or_5?(18)
puts sum_of_3_or_5_multiples(18)
puts multiple_of_3_or_5?(54)
puts sum_of_3_or_5_multiples(54)
puts multiple_of_3_or_5?(1.5)
puts sum_of_3_or_5_multiples(1.5)
