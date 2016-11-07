-- Guards
maximum1 :: Int -> Int -> Int
maximum1 x y | x < y = y
             | x > y = x
             | otherwise = x

-- if-then-else
maximum2 :: Int -> Int -> Int
maximum2 x y = if x < y
                 then y
               else if x > y
                 then x
                    else x

-- case
maximum3 :: Int -> Int -> Int
maximum3 x y = case x < y of
  True -> y
  False -> x

-- Pattern Matching
-- NOT POSSIBLE!!!
