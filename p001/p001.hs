cond n = (mod n 3) == 0 || (mod n 5) == 0
solve n = filter cond $ [0..n]

main = do
    print $ sum $ solve 999
