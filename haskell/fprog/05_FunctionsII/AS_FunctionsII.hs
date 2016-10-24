-- add :: Int -> Int -> Int
add :: (Int -> (Int -> Int))
add a b = a + b

add' :: (Int, Int) -> Int
--add' :: ((Int,Int) -> Int)
add' x = fst x + snd x

curry' :: ((a,b) -> c) -> (a -> b -> c)
--          x y     f      x    y    f
curry' f = \x -> \y -> f (x,y)

-- curry' mit add' verwenden
-- curry' add' 1 2
