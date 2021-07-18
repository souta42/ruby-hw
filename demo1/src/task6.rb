def square(num, m)
  return  {:status => 'failed', :reason => 'Передано не целое число!'} if num.class != Integer or m.class != Integer

  arr = []
  n = Math.sqrt(m).ceil

  if n > 0
    n = n
  else
    n = (n + 1).round
  end

  for i in n..n + num - 1
    arr.push(i)
  end

  return arr
end
