puts "Enter the number of dollars to convert: "
d = gets.to_f
Course = 0.8380
convert = (d * Course).round(2)
puts ("In euro it will be " + convert.to_s)
