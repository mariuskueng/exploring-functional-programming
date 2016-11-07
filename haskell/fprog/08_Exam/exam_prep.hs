-- Aufgabe 4

-- a)
normalize :: String -> [String]
normalize text = filter bigger3 text
                where
                  bigger3 = length word >= 3
                  word = words (map toLower text)

-- b)
rateWord :: String -> Int
rateWord "" = 0
rateWord word
        | elem word words = 2
        | elem word spam = -10


-- c)
rateWords :: [String] -> Bool
rateWords words = sum (map rateWord words)

-- d)
isSpam :: String -> Bool
isSpam word = rateWords (normalize word) < 0

-- Aufgabe 5 Globalwarming

type Messwert = (Int, Double) -- (Woche, Temparatur)

tempDB :: [Messwert]
tempDB = [(1, 5.6), (2, 4.8), (4, 5.9), (5, 4.2)]

type TempDiff = ((Int, Int), Double) -- ((Start Woche, End Woche), Temp. Differenz)

-- a)
tempDiffs :: [Messwert] -> [TempDiff]
tempDiffs [] = []
tempDiffs (a:[]) = []
tempDiffs ((w0, t0):(w1,t1):xs) = ((w0, w1), t1 - t0):tempDiffs xs

-- b)
findDiff :: Int -> [TempDiff] -> [Double]
findDiff _ [] = []
findDiff week ((w0, w1), diff):xs
          | week >= w0 && < w1 = [diff]
          | otherwise = findDiff week xs

-- c)
diffSumme :: Int -> Int -> [TempDiff] -> [Double]
diffSumme x y diffs = sumDiffs (findDiff x diffs) (findDiff y diffs)
                      where
                        sumDiffs [] _ = []
                        sumDiffs _ [] = []
                        sumDiffs (x:_) (y:_) = [x + y]
