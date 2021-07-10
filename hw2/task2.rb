def enterValues txt
  values = []
  for i in 0..2
    puts txt + (i + 1).to_s
    values[i] = gets.to_i
  end

  return values
end

def checkNaturals nums
  for i in nums.each
    if i > 100 or i <= 0
      puts "Значение не должно превышать 100 и должно быть больше 0!"
      puts "Вы ввели: " + i.to_s
      return false
    end
  end

  return true
end

def profit(cost, weight)
  sum = 0
  for i in 0..2
    sum += cost[i] * weight[i]
  end
  return sum
end
  

def goldenSand
  sand = enterValues "Введите стоимость киллограмма песка A"
  bags = enterValues "Введите объём ёмкости B"

  if !(checkNaturals sand) or !(checkNaturals bags)
    return 
  end

  sand.sort!
  bags.sort!

  prof = profit(sand, bags)

  puts ("Сотрудники смогут получить: " + prof.to_s)

end

goldenSand
