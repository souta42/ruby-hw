def to_roman_numerals(number)
    one = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VII', 'IX']
    second = ['X', 'XI', 'XII', 'XII', 'XIV', 'XV', 'XVI', 'XVII', 'XVIII', 'XIX', 'XX']
    ten = ['XX', 'XXX', 'XXXXL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  hundred = ['C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM', 'M']
    if number > 0 && number <= 9
      return one[number - 1]
    
    elsif number >= 10 && number <= 20
      return second[number - 10]

    elsif number > 20 && number <= 99
      str = number.to_s
      new = Array.new
      new << ten[str[0].to_i - 2] << one[str[1].to_i - 1]
      return new.join("")
    
  elsif number > 100 && number <= 1000
      str = number.to_s
      new = Array.new
      new << hundred[str[0].to_i - 2] << second[str[1].to_i - 1] << ten[str[2].to_i - 1] << one[str[3].to_i - 1]
      return new.join("")
    end
end
puts(to_roman_numerals(42))
