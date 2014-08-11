isPrime x = all (\y -> x `mod` y /= 0) (2:[3,5..x-1])

factor xs = head [x | x <- [first,second..], all (\y -> x `mod` y == 0) xs]
  where
    first = product [x | x <- xs, isPrime x]
    second = first * 2

main = do
    --print $ factor [1..10]
    print $ factor [1..20]
