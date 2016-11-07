-- Aufgabe 1

switchFirstTwo :: [a] -> [a]
switchFirstTwo ([]) = ([])
switchFirstTwo (x:[]) = (x:[]) 
switchFirstTwo (x:y:z) = y:x:z --destructuring

-- Aufgabe 2

-- a)
type Vec = (Int, Int)

addVec :: Vec -> Vec -> Vec
addVec (ax, ay) (bx, by) = (ax + bx, ay + by)

-- b)
addVecOpt :: Vec -> Vec -> Vec
addVecOpt (ax, ay) (bx, by) = (addOpt ax bx, addOpt ay by)

addOpt :: Int -> Int -> Int
addOpt a 0 = a
addOpt 0 b = b
addOpt a b = a + b
