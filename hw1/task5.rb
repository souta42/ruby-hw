puts "Enter the distance between two cities: "
d = gets.chomp().to_f
puts "Enter the number of time: "
t = gets.chomp().to_f
s = d / t
puts ("To get in time your speed must be " + s.to_s + " km/h")
