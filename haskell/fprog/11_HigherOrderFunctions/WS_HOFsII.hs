evens :: [Int] -> [Int]
evens [] = []
evens (i:is) | even i = i : evens is
             | otherwise = evens is

data Student = Student { email :: String, grade :: Float } deriving (Show, Eq)
students = [(Student "blatter@fifa.com" 1.0), (Student "infantino@fifa.com" 6.0)]

goodS :: [Student] -> [Student]
goodS [] = []
goodS (s:ss) | grade s > 5 = s : goodS ss
             | otherwise = goodS ss

keep :: (a -> Bool) -> [a] -> [a]
keep _ [] = []
keep f (a:as) | f a = a : keep f as
              | otherwise = keep f as

-- keep (\x -> even x) [1,2,3,4,5]
-- keep (\s -> (grade s) > 5) students
