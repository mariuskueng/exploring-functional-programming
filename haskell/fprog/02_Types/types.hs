-- 1. Basistypen

-- a)
threeEquals :: Int -> Int -> Int -> Bool
threeEquals a b c = (a == b && b == c)

-- b)
fourEquals :: Int -> Int -> Int -> Int -> Bool
-- fourEquals a b c d = (a == b && b == c && c == d)
fourEquals a b c d = (threeEquals a b c && c == d)

-- c)
averageThree :: Int -> Int -> Int -> Double
averageThree a b c = ((fromIntegral a + fromIntegral b + fromIntegral c) / 3)

-- d)
xor :: Bool -> Bool -> Bool
xor a b = (a /= b)

-- 2. Aufzählungstypen

-- a)
-- data Op = Add | Sub
--
-- Add :: Int -> Int -> Int
-- Add a b = (a + b)

-- calc :: Op -> Int -> Int -> Int
-- calc op a b = (op a b)

-- calc Add 2 3

-- 4)

-- a)
f1 :: Int -> Int
f1 a = a

-- b)
f2 :: (Int, Bool) -> Int
f2 a b = (a)

-- -- c)
-- f3 :: a -> (a,Int)
--
-- -- d)
-- f4 :: a -> b
--
-- -- e)
-- f5 :: a-> (a-> b)->b
