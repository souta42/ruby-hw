xo = [[1, 2, 2],
       [2, 1, 1],
       [2, 1, 1]]

def lines(xo)
    for i in 0...3
        if    xo[i][0] == xo[i][1] && xo[i][0] == xo[i][2] && xo[i][0] == 1
            return 1
        elsif xo[i][0] == xo[i][1] && xo[i][0] == xo[i][2] && xo[i][0] == 2
            return 2
        elsif xo[0][i] == xo[1][i] && xo[0][i] == xo[2][i] && xo[0][i] == 1
            return 1
        elsif xo[0][i] == xo[1][i] && xo[0][i] == xo[2][i] && xo[0][i] == 2
            return 2
        end
    end
end

def diagonals(xo)
    if    xo[0][0] == xo[1][1] && xo[0][0] == xo[2][2] && xo[0][0] == 1
        return 1
    elsif xo[0][0] == xo[1][1] && xo[0][0] == xo[2][2] && xo[0][0] == 2
        return 2
    elsif xo[0][2] == xo[1][1] && xo[0][2] == xo[2][0] && xo[0][2] == 1
        return 1
    elsif xo[0][2] == xo[1][1] && xo[0][2] == xo[2][0] && xo[0][2] == 2
        return 2
    end
end

def play(xo)
    if xo.include?(0)
        return -1
    elsif true
        puts.lines(xo)
        puts.diagonals(xo)
    else
        return 0
    end
end
puts play (xo)
