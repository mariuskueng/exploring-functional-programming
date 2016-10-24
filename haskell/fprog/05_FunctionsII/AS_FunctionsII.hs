-- add :: Int -> Int -> Int
add :: (Int -> (Int -> Int))
add a b = a + b

add' :: (Int, Int) -> Int
--add' :: ((Int,Int) -> Int)
add' x = fst x + snd x

--curry' :: (a,b) -> c -> a -> b -> c
curry' :: ((a,b) -> c) -> a -> b -> c
curry' f = \a -> \b -> f(a,b)
