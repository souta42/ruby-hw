def summ_count
arr2d = [[1, 2, 3, 4, 5], [5, 6, 7, 8, 9],[20, 21, 34, 56, 100] ]
 puts(arr2d.map{ |array| array.min })
 res = 0
min_value = arr2d.map{ |array| array.min}
 min_value.to_s
puts(min_value.inject(0){ |res, el| result + el }).to_s
end

summ_count
