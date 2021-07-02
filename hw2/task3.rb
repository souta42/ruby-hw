puts "Введите строку: "
str = gets
def char_count(str)
  str.chars.uniq.count { |char| str.count(char) > 1 }
end
puts char_count(str)
