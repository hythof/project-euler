n = 0
n1 = 0
n2 = 1
s = 0
limit = 4 * 1000 * 1000
loop do
    n = (n1 + n2)
    n1 = n2
    n2 = n
    s += n if (n % 2) == 0
    break if n > limit
end

puts s
