-- Starting out

-- Negative numbers
-- surround negative numbers with parentheses (-x)
multiplyNegative x y = x * y
-- multiplyNegative 5 (-3)

-- Booleans
isSame x y = x == y
notSame x y = x /= y

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

conanO'Brien = "It's a-me, Conan O'Brien!"

-- Intro to lists

lostNumbers = [4,8,15,16,23,42] -- [1,2,3] => syntactic sugar for 1:2:3:[]
-- add a new element at the front: 1:[2,3,4]

combineLists x y = x ++ y
-- combineLists [1,2] [3,4] => [1,2,3,4]
-- combineLists ['a','b'] ['c','d'] => ['a','b','c','d']

-- List indexes
-- [9.4,33.2,96.2,11.2,23.25] !! 1 => 33.2

-- head: returns first element => head [5,4,3,2,1] => 5
-- tail: removes first element, returns rest => tail [5,4,3,2,1] => [4,3,2,1]
-- last: returns last element => last [5,4,3,2,1] => 1
-- init: removes last element, returns rest => init [5,4,3,2,1] => [5,4,3,2]

-- sum [5,2,1,6,3,2,5,7]
-- 4 `elem` [3,4,5,6] => True
-- take 24 [13,26..]
