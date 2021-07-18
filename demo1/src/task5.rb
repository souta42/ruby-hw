def tickets(min, max)

    return  {:status => 'failed', :reason => 'Передано не целое число!'} if min.class != Integer or max.class != Integer
    return  {:status => 'failed', :reason => 'Числа должны быть натуральные и шестизначные!'} if min < 0 or min > 999999 or max < 0 or max > 999999

    max, min = min, max if min > max
    answer = {
        :winner => '',
        :lucky => [123, 56]
    }

    for num in min..max
        arr = num.digits.concat([0,0,0,0,0]).slice(0, 6)

        first = arr.slice(0..2)
        second = arr.slice(3..5)

        evens = []
        odds = []

        arr.each do |n|
            evens << n if n.even?
            odds << n if n.odd?
        end

        answer[:lucky][0] += 1 if  first.sum == second.sum
        answer[:lucky][1] += 1 if  evens.sum == odds.sum
    end

    if answer[:lucky][0] > answer[:lucky][1]
        answer[:winner] = 1
    elsif answer[:lucky][0] < answer[:lucky][1]
        answer[:winner] = 2
    else
        answer[:winner] = 'both'
    end

    return  answer
end
