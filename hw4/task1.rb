def chair(item)
  rev = item.reverse
  res = []
  save = nil
  for i in 0..rev.length - 1
    save = rev.rassoc(rev[i][1]).reverse
	if save[0] - save[1].length < 0
	  res.push(0)
	else
	  res.push(save[0] - save[1].length)
	end
  end
  return res.sum > 0 ? 'Not Enough!' : 'Game On'
 end
