primes = 2:f [3] [3,5..]
  where
    f (x:xs) ys = let (ps, qs) = span (< x^2) ys
                  in ps ++ f (xs ++ ps) [z | z <- qs, mod z x /= 0]

main = do
  print $ primes !! 10000
