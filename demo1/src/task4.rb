def palindrome(num)
  return Hash['status', 'failed', 'reason', 'Передано не целое число!'] if !num.is_a?(Integer)

  return Hash['status', 'failed', 'reason', 'Число вышло за пределы от 9 до 1 000 000 000 000 000 000 000'] if num < 9 or num.to_s.length > 100

  s = num.digits
  res = []
  (2..s.size).count { |m|
    s.each_cons(m) { |n|
      res << n.join.to_i if n == n.reverse and n[0] != 0 and n[-1] != 0
    }
  }

 return res.empty? ? 0 : res.sort![-1]
end
