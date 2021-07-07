def abbr str
  arr = []
  acronym = str.split(' ')
  acronym.each do |word|
    arr.push(word[0].upcase)
  end
  return arr.join('')
end

puts abbr ("cascading style sheets")
