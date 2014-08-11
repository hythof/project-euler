def sumA n
    (1..n).inject(:+) ** 2
end

def sumB n
    (1..n).map{|x| x ** 2}.inject(:+)
end

def diff n
    sumA(n) - sumB(n)
end

puts diff(100)
