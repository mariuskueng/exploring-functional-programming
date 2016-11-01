-- Aufgabe 1
factorial :: Integer -> Integer
factorial 0 = 1
factorial (-1) = error "Not possible in Math, bro!"
factorial n = n * factorial (n-1)

-- factorial (-1) => infinite loop yay!

-- Aufgabe 2
countDown :: Int -> [Int]
countDown 0 = [0]
countDown n = n:(countDown(n-1))

-- countDown 10 -> [10,9,8,7,6,5,4,3,2,1,0]
-- countDown 9 -> [9,8,7,6,5,4,3,2,1,0]
-- countDown 8 -> [8,7,6,5,4,3,2,1,0]

-- Aufgabe 3
countUp :: Int -> [Int]
countUp 0 = [0]
countUp n = countUp (n - 1) ++ [n]

-- countUp 3 -> [0,1,2,3]
-- countUp 2 -> [0,1,2]
-- countUp 1 -> [0,1]

-- Aufgabe 4
countDownUp :: Int -> [Int]
countDownUp 0 = [0]
countDownUp n = n:countDownUp(n-1) ++ [n]

-- countDownUp 3 -> [3,2,1,0,1,2,3]
-- countDownUp 2 -> [2,1,0,1,2]
-- countDownUp 1 -> [1,0,1]
-- countDownUp 0 -> [0]
