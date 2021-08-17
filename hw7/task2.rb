def shuffle(arr)
	return arr.sort_by!{rand}
end

print shuffle([1, 3, 2, 5, 4, 6])
