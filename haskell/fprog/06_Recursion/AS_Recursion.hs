-- Aufgabe 1

-- a)
max' :: (Ord a) => a -> a -> a
max' a b | a > b = a
         | otherwise = b

maxl :: (Ord a) => [a] -> a
maxl [] = error "empty list"
maxl [x] = x
maxl (x:xs) = max' x (maxl xs)

-- b)
-- maxl [2,5,1]
-- ~> max' 2 (maxl [5,1])
-- ~> max' 2 (max' 5 (maxl [1]))
-- ~> max' 2 (max' 5 (1))
-- ~> max' 2 (5)
-- ~> 5

-- Aufgabe 2
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = (reverse' xs) ++ [x]

-- reverse' [1,2,3]
-- ~> (reverse' [2,3]) ++ [1]

alternate :: [Int] -> [Int] -> [Int]
alternate [] bs = bs
alternate (a:as) bs = [a] ++ (alternate bs as)
