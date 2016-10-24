 -- L05 - Functions II

 add :: Int -> (Int -> Int)
 add a b = a + b

 inc :: Int -> Int
 inc = add 1 -- inc a = add a 1

 incAll :: [Int] -> [Int]
 incAll xs = map (\x -> x + 1) xs
 -- incAll xs = map inc xs

 -- WS Partial Application

 wrap :: String -> (String -> (String -> String))
 wrap pre post text = pre ++ text ++ post

 h1Tag :: String -> String
 h1Tag = wrap "<h1>" "</h1>"

 old :: Int -> Bool
 old age = age > 90

 -- Aufgabe Typen

 -- drop 3 :: [a] -> [a]
 -- map snd :: [(a, b) -> [b]] or snd :: (a,b) -> b
 -- filter old :: [Int] -> [Int] or filter :: (a -> Bool) -> [a] -> [a]
 -- map head :: [a] -> a
 -- map (wrap "/*" "*/") -> [String] -> [String]
