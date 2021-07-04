puts "Enter quantity of money: "
m = gets.chomp().to_f
puts "Enter the price of chocolate: "
p = gets.chomp().to_f
buy = (m / p).round
moneyLeft = (m % p)
puts ("You can buy " + buy.to_s + " chocolates.\nYou have " + moneyLeft.to_s + " dollars left")
