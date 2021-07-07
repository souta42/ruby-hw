puts "Enter the radius of the circle: "
r = gets.chomp().to_f
s = (Math::PI * (r ** 2)).round(2)
puts ("Area of a circle is " + s.to_s)
