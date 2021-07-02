puts "Введите длину: "
l = gets.to_i
puts "Введите ширину: "
w = gets.to_i
puts "Введите высоту: "
h = gets.to_i
if l >= 1000 or w >= 1000 or h >= 1000
  puts "Значение не должно превышать 1000!"
end
paint_jar = 16

def paint_quantity(l, w, h, paint_jar)
  res = (2 * (l * h + w * h) / paint_jar)
  return res
end

puts ("Нужно минимум " + paint_quantity(l, w, h, paint_jar).to_s + " банок краски")
