sumA xs = (sum xs) ** 2

sumB xs = sum $ map (\x -> x ** 2) xs

diff xs = truncate $ (sumA xs) - (sumB xs)

main = do
  print $ diff([1..100])
