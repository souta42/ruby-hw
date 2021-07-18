def fibonacci(num)

    range = [1, 1]

    if num.length == 1
        for i in 2..num[:len] - 1
            range << range[i - 2] + range[i - 1]
        end
        return range

    elsif num.length == 2
        num[:min], num[:max] = num[:max], num[:min] if num[:min] > num[:max]
        i = 2
        while range.last < num[:min]
            range << range[i - 2] + range[i - 1]
            i += 1
        end

        j = 2
        res = range.last(2)

        while res.last < num[:max]
            res << res[j - 2] + res[j - 1]
            j += 1
        end
        res.delete_at(0)
        return res
    end

    return 0
end
