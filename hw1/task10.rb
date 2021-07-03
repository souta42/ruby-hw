puts "Enter a number: "
num = gets.to_i
def char1_count(num)
  if num < 0
    puts "Input must be non-negative!"
	else
	  num = num.to_s(2)
	  count_1 = 0
	  num.each_char { |el| count_1 += 1 if el == '1'}
	  return count_1
	end
end
puts num.to_s(2)
puts char1_count(num).to_s
