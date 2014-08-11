require "prime"

def factories n
    pxs = Prime.take_while{|k| k < n ** 0.5}
    xs = []
    k = n
    while k != 1
        x = pxs.find(nil){|p| k % p == 0}
        xs << x
        k /= x
        pxs.select!{|p| p <= k}
    end
    return xs
end

#puts factories(13195)
puts factories(600851475143).max
