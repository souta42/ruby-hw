def tr_area(triangles)
  areas = []
  triangles.each_with_object([]) do |tr, arr|
    a, b, c, = tr['verices'].downcase.split('')
    p = (tr[a] + tr[b] + tr[c]) / 2.0
    s = Math.sqrt(p * (p - tr[a]) * (p - tr[b]) * (p - tr[c]))
    areas << [s, tr['verices']]
  end
  areas.sort!.reverse!
  res = []
  areas.each do |area|
    res << area[1]
  end
  return res
end
