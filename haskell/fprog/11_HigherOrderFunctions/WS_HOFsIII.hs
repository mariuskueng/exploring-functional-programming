sum [] = 0
sum (x:xs) = x + sum xs

product [] = 1
product (x:xs) = x * product xs

or [] = False
or (x:xs) = x || or xs

and [] = True
and (x:xs) = x && and xs

aggregate :: (a -> a -> a) -> a -> [a] -> a
aggregate _ [] = z
aggregate op z (x:xs) = x `op` (aggregate op z xs)
