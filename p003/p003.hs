isPrime :: Integer -> Bool
isPrime n = n == 2 || count == 1
  where
    count = length [x | x <- [3,5..n], n `mod` x == 0] 

primes :: Integer -> [Integer]
primes n = [x | x <- 2:[3,5..n], isPrime x]

factor :: Integer -> Integer -> Bool
factor x y = x `mod` y == 0

factorize :: Integer -> [Integer]
factorize 1 = []
factorize n = v : (factorize(n `div` v))
  where
    v = head [x | x <- primes n, factor n x]

main = do
  --print $ factorize 13195
  print $ maximum $ factorize 600851475143
