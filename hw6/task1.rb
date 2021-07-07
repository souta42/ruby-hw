def toCamelCase str
  arr = str.split('')
  for i in 0..arr.length - 1
    if arr[i] == '-'
      arr.delete_at(i)
      arr[i].upcase!
    end
  end
  return arr.join
end

puts toCamelCase ("background-color")
