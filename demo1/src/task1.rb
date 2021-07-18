def chessboard(length, width, symbol)

  arr = []
  for i in 0..length
    for j in 0..width
      if (i+j) % 2 == 0
        arr << (symbol)
      else
        arr << (' ')
      end
    end
  arr << ("\n")
end
return arr.join
end
