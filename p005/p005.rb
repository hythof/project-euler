require "prime"

def factor n
    xs = (1..n).to_a
    step = xs.select{|x| Prime.prime? x}.inject :*
    k = step
    loop do
        if xs.all?{|x| k % x == 0}
            return k
        end
        k += step
    end
end

#puts factor(10)
puts factor(20)
