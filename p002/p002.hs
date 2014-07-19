fib 0 = 1
fib 1 = 1
fib n = fib' n 1 1

fib' 1 _ y = y
fib' n x y = fib' (n - 1) y (x + y)

main = do
    print $ sum $ filter even $ takeWhile (<= 4 * 1000 * 1000) $ map fib [1..]
