-- data Maybe a = Nothing | Just a

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (a:_) = Just a

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (_:as) = Just as

safeMax :: (Ord a) => [a] -> Maybe a
safeMax [] = Nothing
safeMax (a:[]) = Just a
safeMax (a:b:as) | a > b = safeMax (a:as)
                 | otherwise = safeMax (b:as)
