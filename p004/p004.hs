nums n = [x * y | x <- xs, y <- ys x]
  where
    xs = [1..k]
    ys x = [1..x]
    k = truncate $ (10 ** n) - 1

isPalidromic n = if len `mod` 2 == 0 then checkA else checkB
  where
    str = show n
    len = length str
    mid = truncate $ fromIntegral(len) / 2
    checkA = take mid str == (reverse $ drop mid str)
    checkB = take mid str == (reverse $ drop (mid + 1) str)

maxPalindromic n = maximum [k | k <- nums n, isPalidromic k]

main = do
    --print $ maxPalindromic 2
    print $ maxPalindromic 3
