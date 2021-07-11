cars = [
    {
        :year => 2020,
        "name" => "Skoda",
        "model" => "Karoq",
        :mileage => 10000,
        :color => "blue"
    },
    {
        :year => 2008,
        "name" => "Kia",
        "model" => "Ceed",
        :mileage => 16000,
        :color => "blue"
    },
    {
        :year => 2013,
        "name" => "Kia",
        "model" => "Soul",
        :mileage => 150000,
        :color => "white"
    },
    {
        :year => 1988,
        "name" => "Peugeot",
        "model" => "405",
        :mileage => 320000,
        :color => "blue"
    },
    {
        :year => 2017,
        "name" => "Nissan",
        "model" => "Quashkai",
        :mileage => 45000,
        :color => "violet"
    },
    {
        :year => 1972,
        "name" => "ВАЗ",
        "model" => "2103",
        :mileage => 480000,
        :color => "dark red"
    },
    {
        :year => 2002,
        "name" => "Nissan",
        "model" => "X-Trail",
        :mileage => 213000,
        :color => "green"
    }
]

#1 Средний пробег
def avg_mileage(cars)
	avg = 0

	cars.each do |car|
		avg += car[:mileage]
	end

	return avg / cars.length
end

#2 Средний год выпуска
def avg_year(cars)
	avg = 0

	cars.each do |car|
		avg += car[:year]
	end

	return avg / cars.length
end

#3 Средний возраст
def avg_age(cars)
	avg = 0

	cars.each do |car|
		avg += 2021 - car[:year]
	end

	return avg / cars.length
end

#4 Средний пробег за год
def miles_per_year(cars)
    y = (Time.now).year
	avg = 0
    cars.each { |car| car[:mpy] = car[:mileage] / (y - car[:year]) }

	cars.each do |mpy|
		avg += mpy[:mpy]
	end
    return avg / cars.length
end

#5 Медиана пробега
def mid_miles(cars)
	arr = []

	cars.each do |car|
		arr.push(car[:mileage])
	end

	avg = arr.length / 2

	return arr.sort[avg - 1]
end

#6 Медиана года выпуска
def mid_years(cars)
	arr = []

	cars.each do |car|
		arr.push(car[:year])
	end

	avg = arr.length / 2

	return arr.sort[avg - 1]
end

#7 Медиана возраста
def mid_age(cars)
	arr = []

	cars.each do |car|
		arr.push(2021 - car[:year])
	end

	avg = arr.length / 2

	return arr.sort[avg - 1]
end

#8 Медиана пробега за год
def mid_miles_year(cars)
    y = (Time.now).year
	arr = []
    cars.each { |car| car[:mpy] = car[:mileage] / (y - car[:year]) }

	cars.each do |mpy|
		arr.push(mpy[:mpy])
	end

	avg = arr.length / 2
    return arr.sort[avg - 1]
end

#9 Самый популярный цвет авто
def common_color(cars)
	stat = {}
	arr = []
	save = 1
    cars.each do |car|
		c = car[:color]
		stat[c] = stat.has_key?(c) ? stat[c] + 1 : 1
	end

	stat.each_value{|val| val > save ? arr.push(stat.key(val)) : save = val}

	return arr
end

#10 Самый редкий цвет авто
def rare_color(cars)
	stat = {}
	arr = []
	save = 1
    cars.each do |car|
		c = car[:color]
		stat[c] = stat.has_key?(c) ? stat[c] + 1 : 1
	end

	stat.each do |res|
		sub_arr = res
		sub_arr[1] <= save ? arr.push(sub_arr[0]) : save += 1
	end

	return arr
end
