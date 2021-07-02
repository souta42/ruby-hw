sand = []
bags = []

puts "Стоимость киллограмма песка A1: "
sand[0] = gets.to_i
puts "Стоимость киллограмма песка A2: "
sand[1] = gets.to_i
puts "Стоимость киллограмма песка A3: "
sand[2] = gets.to_i
puts "Объём ёмкости B1: "
bags[0] = gets.to_i
puts "Объём ёмкости B2: "
bags[1] = gets.to_i
puts "Объём ёмкости B3: "
bags[2] = gets.to_i

for i in sand.each
  if i >= 100
    puts "Значение не должно превышать 100!"
    return 0
  end
end
for i in bags.each
  if i >= 100
    puts "Значение не должно превышать 100!"
    return 0
  end
end

cost = sand.sort
weight = bags.sort

def profit(cost, weight)
  res = cost[0] * weight[0] + cost[1] * weight[1] + cost[2] * weight[2]
  return res
end
puts ("Сотрудники смогут получить: " + profit(cost, weight).to_s)
