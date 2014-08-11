def isPalindrome n
    str = n.to_s
    len = str.size
    mid = (len / 2).to_i
    if len % 2 == 0
        return str[0, mid] == str[mid, mid].reverse
    else
        return str[0, mid] == str[mid + 1, mid].reverse
    end
end

def maxPalindrome n
    limit = 10 ** n
    ax = []
    xs = (1...limit)
    xs.each do |x|
        for y in 1..x
            k = x * y
            if isPalindrome k
                ax << k
            end
        end
    end
    return ax.max
end

#puts maxPalindrome(2)
puts maxPalindrome(3)
