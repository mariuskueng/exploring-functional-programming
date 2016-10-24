-- WS Lambda Expressions

-- Aufgabe 1

-- a)
incAll :: [Int] -> [Int]
incAll xs = map (\x -> x + 1) xs

-- b)
addToAll :: Int -> [Int] -> [Int] -- 1 [1,2,3] => [2,3,4]
addToAll x xs = map (\y -> x + y) xs

-- c)
keepOld :: [Int] -> [Int]
keepOld xs = filter (\x -> x > 90) xs

-- d)
dropShort :: [String] -> [String]
dropShort xs = filter (\x -> length x > 1) xs

-- Aufgabe 2

-- Int -> bool
-- [a] -> [a]
-- ([a], [b]) -> [a,b]
-- t -> ((a,b) -> b)
-- [a] -> a
-- [a] -> a
-- (([z], y),[z]) -> [z]
