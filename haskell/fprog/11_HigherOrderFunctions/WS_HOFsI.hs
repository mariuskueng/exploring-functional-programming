squares :: [Int] -> [Int]
squares [] = []
squares (i:is) = i^2 : squares is

data Student = Student { email :: String, grade :: Float } deriving (Show, Eq)

students = [(Student "blatter@fifa.com" 1.0), (Student "infantino@fifa.com" 2.0)]
numbers = [1,2,3,4,5]

emails :: [Student] -> [String]
emails [] = []
emails (s:ss) = (email s) : emails ss

transform :: (a -> b) -> [a] -> [b]
transform _ [] = []
transform f (a:as) = (f a) : transform f as -- transform (\x -> (email x)) emails oder -- transform email emails

squares' :: [Integer] -> [Integer]
squares' is = transform (\i -> i^2) is -- squares' numbers [1,4,9,16,25]

emails' :: [Student] -> [String]
emails' ss = transform (\s -> email s) ss --  emails' students ["blatter@fifa.com","infantino@fifa.com"]
